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
    </head>
    <body>
        <%
            if (session.getAttribute("cnm") == null) {
                response.sendRedirect("index.jsp");
            } else {

        %>
        <%@page import="java.io.*, java.util.*,java.sql.*" %>
        <%! ResultSet rs, rs2, rs3;%>
        <% try {
                int ordid = Integer.parseInt(request.getParameter("oid"));
                int custid = Integer.parseInt(session.getAttribute("cid").toString());
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");

                String qry = "SELECT * FROM CUSTOMER WHERE CUST_ID=?";
                PreparedStatement ps = con.prepareStatement(qry);
                ps.setInt(1, custid);
                rs = ps.executeQuery();
                if (rs.next()) {

        %>
        <section class="container invoice mt-5">
            <h3 class="text-center p-3 mt-3">Invoice</h3>
            <div class="row">
                <h4 class="text-center fs-3 mt-4 mb-4">DIVINE MELODY MUSIC PALACE</h4>
            </div>
            <div class="row">
                <% String qry2 = "SELECT * FROM ORDERDETAILS WHERE ORDERID=?";
                    PreparedStatement ps2 = con.prepareStatement(qry2);
                    ps2.setInt(1, ordid);
                    rs2 = ps2.executeQuery();
                    if (rs2.next())
                %>
                <hr>
                <div class="col-4">
                    <p><strong>ORDER ID : <%=rs2.getInt("ORDERID")%></strong></p>
                    <p><strong>ORDER DATE : </strong><%=rs2.getString("ORDDATE")%></p>
                </div>
                <div class="col-4">
                    <p><strong>Bill TO : </strong></p>
                    <p><strong><%=rs.getString("CNAME")%></strong></p>
                    <p>CONTACT : <%=rs.getLong("CPHONE")%></p>
                </div>
                <div class="col-4">
                    <p><strong>Ship TO : </strong></p>
                    <p><%=rs.getString("CADDR")%></p>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-4">
                    <p><strong>PRODUCT</strong></p>
                </div>
                <div class="col-4">
                    <p><strong>TITLE</strong></p>
                </div>
                <div class="col-4">
                    <p><strong>PRICE</strong></p>
                </div>
            </div>
            <hr>

            <%
                }
                String qry3 = "SELECT P.P_TYPE,P.P_NAME,P.DISC_PRICE FROM PRODUCT P , ORDERDETAILS O WHERE P.PROD_ID=O.PROD_ID AND O.ORDERID=?";
                PreparedStatement ps3 = con.prepareStatement(qry3);
                ps3.setInt(1, ordid);
                rs3 = ps3.executeQuery();
                while (rs3.next()) {
            %>
            <div class="row">
                <div class="col-4">
                    <p><%=rs3.getString("P_TYPE")%></p>
                </div>
                <div class="col-4">
                    <p><%=rs3.getString("P_NAME")%></p>
                </div>
                <div class="col-4">
                    <p><i class="fas fa-rupee-sign"></i><%=rs3.getInt("DISC_PRICE")%></p>
                </div>
            </div>
            <% }%>
            <hr>
            <div class="row">
                <div class="col-8"><strong>TOTAL </strong></div>
                <div class="col-4"><strong><i class="fas fa-rupee-sign"></i><%=rs2.getInt("AMOUNT")%> </strong></div>
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
<%  } catch (Exception ex) {
        out.println(ex);
    }%> 
<% }%>