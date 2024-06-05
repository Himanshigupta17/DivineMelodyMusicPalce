<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function show() {
                alert('Invalid Credentials....!!! ');
                window.location.href = "admin_login.jsp";
            }
        </script>
    </head>
    <body>

        <!--verifying admin details from databse-->
        <%@page import="java.io.*,java.sql.*" %>
        <%! String pwd, login_id;%>
        <%
            try {
                ResultSet rs;
                login_id = request.getParameter("loginId");
                pwd = request.getParameter("password");

                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");
                String qry = "select * from Admin where Login_ID=? and password=?";

                PreparedStatement ps = con.prepareStatement(qry);
                ps.setString(1, login_id);
                ps.setString(2, pwd);
                rs = ps.executeQuery();
                if (rs.next()) {
                    session.setAttribute("ad_nm", rs.getString("ad_name"));
                    response.sendRedirect("admin_interface.jsp");
                } else {
        %>
        <script>show()</script>
        <%
                }
                ps.close();

            } catch (Exception ex) {
                out.println(ex);
            }
        %>
    </body>
</html>
