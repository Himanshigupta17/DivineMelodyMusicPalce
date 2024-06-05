<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Service</title>
        <script type="text/javascript">
            function show(){
                alert('Service Is Scheduled....!!! ');
                window.location.href="services.jsp";
            }
        </script>
    </head>
    <body>
        <%
            if (session.getAttribute("cnm") == null) {
                response.sendRedirect("index.jsp");
            } else {

        %>
        <%@page import="java.io.*,java.sql.*" %>
        <%! String cat, serdate, purpose, addr;
            int servid;%>
        <%      try {
                ResultSet rs;

                cat = request.getParameter("cat");
                serdate = request.getParameter("sdate");
                addr = request.getParameter("addr");
                purpose = request.getParameter("purpose");

                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");

                String qry2 = "select max(SERVICE_ID) from SERVICE";
                PreparedStatement ps2 = con.prepareStatement(qry2);
                rs = ps2.executeQuery();
                if (rs.next()) {
                    servid = rs.getInt(1);
                    servid++;
                }
                String qry = "INSERT INTO SERVICE VALUES(?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(qry);

                ps.setInt(1, servid);
                ps.setString(2, serdate);
                ps.setString(3, cat);
                ps.setString(4, purpose);
                ps.setString(5, addr);
                ps.executeQuery();

        %>
        <script>show();</script>
        <%                ps.close();

            } catch (Exception ex) {
                out.println(ex);
            }
        %>
    </body>
</html>
<% }%>