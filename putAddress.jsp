<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (session.getAttribute("cnm") == null) {
                response.sendRedirect("index.jsp");
            } else {


        %>
        <%@page import="java.io.*,java.sql.*" %>
        <%! String addr;
            int custid;%>

        <%                try {
                ResultSet rs;
                custid = Integer.parseInt(session.getAttribute("cid").toString());

                addr = request.getParameter("address");

                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");
                String qry = "UPDATE CUSTOMER SET CADDR=(?) WHERE CUST_ID=(?)";

                PreparedStatement ps = con.prepareStatement(qry);

                ps.setString(1, addr);
                ps.setInt(2, custid);

                ps.executeUpdate();
                response.sendRedirect("payment.jsp");
                ps.close();

            } catch (Exception ex) {
                out.println(ex);
            }
        %>
    </body>
</html>
<% }%>