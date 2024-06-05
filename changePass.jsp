<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <script type="text/javascript">
            function show() {
                alert('Password Changed Successfully....!!! ');
                window.location.href = "myProfile.jsp";
            }
        </script>
        <script type="text/javascript">
            function show2() {
                alert('Wrong Current Password....!!! ');
                window.location.href = "myProfile.jsp";
            }
        </script>
        <script type="text/javascript">
            function show3() {
                alert('New password and Confirm Password doesn"t match.!!! ');
                window.location.href = "myProfile.jsp";
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
        <%! String cpwd, npwd, conpwd;
            int custid;%>
        <%      try {
                custid = Integer.parseInt(session.getAttribute("cid").toString());

                cpwd = request.getParameter("current");
                npwd = request.getParameter("newPassword");
                conpwd = request.getParameter("conPassword");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");

                if (npwd.equals(conpwd) == false) {
        %>
        <script>show3()</script>
        <%} else {
            String qry = "UPDATE CUSTOMER SET PWD=? WHERE CUST_ID=? AND PWD=?";
            PreparedStatement ps = con.prepareStatement(qry);

            ps.setString(1, npwd);
            ps.setInt(2, custid);
            ps.setString(3, cpwd);

            int r = ps.executeUpdate();

//                response.sendRedirect("myProfile.jsp");
            if (r == 1) {
        %>
        <script>show()</script>
        <%
        } else {
        %>
        <script>show2()</script>
        <%
                    }
                    ps.close();
                }
            } catch (Exception ex) {
                out.println(ex);
            }
        %>
    </body>
</html>
<%}%>