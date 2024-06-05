<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete cart Item</title>
    </head>
    <body>
        <%
            if (session.getAttribute("cnm") == null) {
                response.sendRedirect("index.jsp");
            } else {
                
            
        %>
        <%@page import="java.sql.*"%>
        
        <%
            try {
                int pid;
                pid=Integer.parseInt(request.getParameter("pid"));
                ResultSet rs;
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");
                String qry = "DELETE FROM CART WHERE PROD_ID=(?)";

                PreparedStatement ps = con.prepareStatement(qry);
                ps.setInt(1, pid);
                ps.executeUpdate();

                response.sendRedirect("viewCart.jsp");
            }catch(Exception ex){
                out.println(ex);
            }
        %>
    </body>
</html>
<% } %>