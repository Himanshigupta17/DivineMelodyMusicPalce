
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.io.*,java.sql.*" %>
        <%! String cnm, email, gender, pwd, addr;
            long phn;
            int cid;%>
        <%
            try {
                ResultSet rs;
                cnm = request.getParameter("name");
                email = request.getParameter("email");
                gender = request.getParameter("gender");
                pwd = request.getParameter("password");
                phn = Long.parseLong(request.getParameter("phone"));
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");
                String qry = "insert into Customer values(?,?,?,?,?,?,?)";

                String qry2 = "select max(Cust_ID) from Customer";
                PreparedStatement ps2 = con.prepareStatement(qry2);
                PreparedStatement ps = con.prepareStatement(qry);

                rs = ps2.executeQuery();
                if (rs.next()) {
                    cid = rs.getInt(1);
                    cid++;
                }
                ps.setInt(1, cid);
                ps.setString(2, cnm);
                ps.setString(3, email);
                ps.setLong(4, phn);
                ps.setString(5, gender);
                ps.setString(6, addr);
                ps.setString(7, pwd);

                ps.executeUpdate();
                response.sendRedirect("index.jsp");
                ps.close();

            } catch (Exception ex) {
                out.println(ex);
            }
        %>
    </body>
</html>
