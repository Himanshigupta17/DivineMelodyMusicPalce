<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BILL</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style2.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script>
            function show() {
                if (confirm("Invalid Card Details or Not Sufficient Balance"))
                {
                    window.location = "paymentCourse.jsp";
                } else {
                    window.location = "courseReceipt.jsp";
                }
            }
        </script>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style2.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    </head>
    <body>
        <%
            if (session.getAttribute("cnm") == null) {
                response.sendRedirect("index.jsp");
            } else {
        %>
        <%@page import="java.io.*,java.sql.*,java.util.*,java.sql.Date" %>
        <%! float cno;
            String expire;
            int cvv, trans, price, ordid, x, courseid, custid;
            ResultSet r, rs2, rs3, rs6, rs7, rs8;%>
        <%            try {
                java.util.Date today = new java.util.Date();
                Date currentDate = new java.sql.Date(today.getTime());

                cno = Float.parseFloat(request.getParameter("cardno"));
                expire = request.getParameter("expiremonth");
                cvv = Integer.parseInt(request.getParameter("cvv"));
                courseid = Integer.parseInt(request.getParameter("courid"));

                custid = Integer.parseInt(session.getAttribute("cid").toString());
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");

                String qry2 = "SELECT * FROM COURSE WHERE COURSE_ID=?";
                PreparedStatement ps2 = con.prepareStatement(qry2);
                ps2.setInt(1, courseid);
                ResultSet rs2 = ps2.executeQuery();
                if (rs2.next()) {
                    price = rs2.getInt("PRICE");
                }

                String qry = "SELECT * FROM BANK WHERE CARDNO=? and VALIDUPTO=? and CVV=? and BALANCE >=?";
                PreparedStatement ps = con.prepareStatement(qry);

                ps.setFloat(1, cno);
                ps.setString(2, expire);
                ps.setInt(3, cvv);
                ps.setInt(4, price);
                r = ps.executeQuery();
                if (!r.next()) {
        %>
        <script>show();</script>
        <%
            } else {

                String qry3 = "select max(TRANSID) from PAYMENT";
                PreparedStatement ps3 = con.prepareStatement(qry3);
                rs3 = ps3.executeQuery();
                if (rs3.next()) {
                    trans = rs3.getInt(1);
                    trans++;
                }

                String qry4 = "insert into PAYMENT VALUES(?,?,?,?,?)";
                PreparedStatement ps4 = con.prepareStatement(qry4);
                ps4.setInt(1, trans);
                ps4.setString(2, currentDate.toString());
                ps4.setInt(3, price);
                ps4.setInt(4, custid);
                ps4.setFloat(5, cno);
                ps4.executeUpdate();

                String qry5 = "select max(ORDERID) from PURCHASED_COURSES";
                PreparedStatement ps5 = con.prepareStatement(qry5);
                rs6 = ps5.executeQuery();
                if (rs6.next()) {
                    ordid = rs6.getInt(1);
                    ordid++;
                }

                String qry6 = "INSERT INTO PURCHASED_COURSES VALUES(?,?,?,?,?,?)";
                PreparedStatement ps6 = con.prepareStatement(qry6);
                ps6.setInt(1, ordid);
                ps6.setInt(2, custid);
                ps6.setInt(3, courseid);
                ps6.setString(4, currentDate.toString());
                ps6.setInt(5, trans);
                ps6.setInt(6, price);
                ps6.executeUpdate();

            }%>



        <!--html for bill generation-->

        <section class="container invoice mt-5">
            <h3 class="text-center p-3 mt-3">Invoice</h3>
            <div class="row">
                <h4 class="text-center fs-3 mt-4 mb-4">DIVINE MELODY MUSIC PALACE</h4>
            </div>
            <div class="row">
                <% String qry7 = "SELECT * FROM PURCHASED_COURSES WHERE ORDERID=?";
                    PreparedStatement ps7 = con.prepareStatement(qry7);
                    ps7.setInt(1, ordid);
                    rs7 = ps7.executeQuery();
                    if (rs7.next())
                %>
                <hr>
                <div class="col-4">
                    <p><strong>ORDER ID : <%=ordid%></strong></p>
                    <p><strong>ORDER DATE : </strong><%=rs7.getString("ORDDATE")%></p>
                </div>
                <div class="col-4">
                    <% String qry8 = "SELECT * FROM CUSTOMER WHERE CUST_ID=?";
                        PreparedStatement ps8 = con.prepareStatement(qry8);
                        ps8.setInt(1, custid);
                        rs8 = ps8.executeQuery();
                        rs8.next();
                    %>
                    <p><strong>Bill TO : </strong></p>
                    <p><strong><%=rs8.getString("CNAME")%></strong></p>
                    <p>CONTACT : <%=rs8.getLong("CPHONE")%></p>
                </div>
                <div class="col-4">
                    <p><strong>Ship TO : </strong></p>
                    <p><%=rs8.getString("CADDR")%></p>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-4">
                    <p><strong>INSTRUMENT</strong></p>
                </div>
                <div class="col-4">
                    <p><strong>TITLE</strong></p>
                </div>
                <div class="col-4">
                    <p><strong>PRICE</strong></p>
                </div>
            </div>
            <hr>

            
            <div class="row">
                <div class="col-4">
                    <p><%=rs2.getString("INSTRUMENT")%></p>
                </div>
                <div class="col-4">
                    <p><%=rs2.getString("COURSE_NM")%></p>
                </div>
                <div class="col-4">
                    <p><i class="fas fa-rupee-sign"></i><%=price%></p>
                </div>
            </div>
            
            <hr>
            <div class="row">
                <div class="col-8"><strong>TOTAL </strong></div>
                <div class="col-4"><strong><i class="fas fa-rupee-sign"></i><%=price%> </strong></div>
            </div>
            <hr>
        </section>
        <div class="row d-flex justify-content-center bill">
            <input type="button" onclick="window.print()" value=" Print Receipt"/>
            <input type="button" onclick="window.location.href = 'home.jsp'" value=" Back To Home"/>
        </div>
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        
        
    </body>
</html>
<%
    } catch (Exception ex) {
        out.println(ex);
    }
%>
<% }%>