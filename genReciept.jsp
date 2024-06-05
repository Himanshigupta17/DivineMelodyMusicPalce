<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Receipt</title>
        <script>
            function show() {
                if (confirm("Invalid Card Details"))
                {
                    window.location = "payment.jsp";
                } else {
                    window.location = "genReciept.jsp";
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
            int cvv, trans, total, ordid, x;
            ResultSet r, rs6;%>
        <%            try {
                java.util.Date today = new java.util.Date();
                Date currentDate = new java.sql.Date(today.getTime());

                cno = Float.parseFloat(request.getParameter("cardno"));
                expire = request.getParameter("expiremonth");
                cvv = Integer.parseInt(request.getParameter("cvv"));

                int custid = Integer.parseInt(session.getAttribute("cid").toString());
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");

                String qry2 = "SELECT sum(price) FROM CART WHERE CUST_ID=?";
                PreparedStatement ps2 = con.prepareStatement(qry2);
                ps2.setInt(1, custid);
                ResultSet rs2 = ps2.executeQuery();
                if (rs2.next()) {
                    total = rs2.getInt(1);
                }

                String qry = "SELECT * FROM BANK WHERE CARDNO=? and VALIDUPTO=? and CVV=? and BALANCE >=?";
                PreparedStatement ps = con.prepareStatement(qry);

                ps.setFloat(1, cno);
                ps.setString(2, expire);
                ps.setInt(3, cvv);
                ps.setInt(4, total);
                r = ps.executeQuery();
                if (!r.next()) {
        %>
        <script>show();</script>
        <%
            } else {

                //get sum here from cart
                String qry3 = "select max(TRANSID) from PAYMENT";
                PreparedStatement ps3 = con.prepareStatement(qry3);
                ResultSet rs3 = ps3.executeQuery();
                if (rs3.next()) {
                    trans = rs3.getInt(1);
                    trans++;
                }

                String qry4 = "insert into PAYMENT VALUES(?,?,?,?,?)";
                PreparedStatement ps4 = con.prepareStatement(qry4);
                ps4.setInt(1, trans);
                ps4.setString(2, currentDate.toString());
                ps4.setInt(3, total);
                ps4.setInt(4, custid);
                ps4.setFloat(5, cno);
                ps4.executeUpdate();

                String qry7 = "select max(ORDERID) from ORDERDETAILS";
                PreparedStatement ps7 = con.prepareStatement(qry7);
                rs6 = ps7.executeQuery();
                if (rs6.next()) {
                    ordid = rs6.getInt(1);
                    ordid++;
                }
                String qry5 = "SELECT * FROM CART WHERE CUST_ID=?";
                PreparedStatement ps5 = con.prepareStatement(qry5);
                ps5.setInt(1, custid);
                ResultSet rs5 = ps5.executeQuery();

                while (rs5.next()) {
                    String qry6 = "INSERT INTO ORDERDETAILS VALUES(?,?,?,?,?,?,?)";
                    PreparedStatement ps6 = con.prepareStatement(qry6);
                    ps6.setInt(1, ordid);
                    ps6.setInt(2, custid);
                    ps6.setInt(3, rs5.getInt("PROD_ID"));
                    ps6.setString(4, currentDate.toString());
                    ps6.setInt(5, trans);
                    ps6.setInt(6, total);
                    ps6.setString(7, "PENDING");
                    ps6.executeUpdate();
                }

            }%>

        <%
            String qry8 = "DELETE FROM CART WHERE CUST_ID=?";
            PreparedStatement ps8 = con.prepareStatement(qry8);
            ps8.setInt(1, custid);
            ps8.executeQuery();
                
            String qry9 = "UPDATE BANK SET BALANCE=BALANCE-? WHERE CARDNO=?";
            PreparedStatement ps9 = con.prepareStatement(qry9);
            ps9.setInt(1, total);
            ps9.setFloat(2, cno);
            ps9.executeQuery();

            } catch (Exception ex) {
                out.println(ex);
            }
        %>
        <div class="receipt container mt-5">
            <h1 class="text-center mt-4 mb-3">YOUR ORDER HAS BEEN PLACED......!!!!! </h1>
            <h3 class="text-center mb-4">Click On Proceed To Get The Bill ..</h3>
            <input type="button" onclick="window.location.href = 'bill.jsp?oid=<%=ordid%>'"  value="Procced Next"/>

        </div>
    </body>
</html>
<% }%>