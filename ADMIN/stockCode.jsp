<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.io.*,java.sql.*" %>
        <%! int prod_id, quant;%>
        <%
            try {
                ResultSet rs;
                
                prod_id = Integer.parseInt(request.getParameter("pid"));
                quant = Integer.parseInt(request.getParameter("update"));
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");
                String qry = "UPDATE Product SET QUANTITY=(?) WHERE PROD_ID=(?)";

                PreparedStatement ps = con.prepareStatement(qry);

                
                
                ps.setInt(1, quant);
                ps.setInt(2, prod_id);

                ps.executeUpdate();
                response.sendRedirect("stock.jsp");
                ps.close();

            } catch (Exception ex) {
                out.println(ex);
            }
        %>
    </body>
</html>
