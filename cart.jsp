<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CART</title>
    </head>
    <body>
        <%
            if (session.getAttribute("cnm") == null) {
                response.sendRedirect("index.jsp");
            } else {  
        %>
        <%@page import="java.io.*,java.sql.*,java.util.*" %>
        <%!int proId, custId, p_price;
            String p_name, p_date;%>

        <%
            custId = Integer.parseInt(session.getAttribute("cid").toString());
            proId = Integer.parseInt(request.getParameter("pid"));
            p_name = request.getParameter("pnm");
            p_price = Integer.parseInt(request.getParameter("pp"));
            java.util.Date date = new java.util.Date();
            p_date = date.toString();

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");
            String qry = "INSERT INTO CART VALUES (?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(qry);
            ps.setInt(1, custId);
            ps.setInt(2, proId);
            ps.setString(3, p_name);
            ps.setInt(4, p_price);
            ps.setString(5, p_date);

            ps.executeUpdate();
            response.sendRedirect("home.jsp") ;
        %>
    </body>
</html>
<% } %>