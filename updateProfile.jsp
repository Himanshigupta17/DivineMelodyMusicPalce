<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Profile</title>
    </head>
    <body>
        <%
            if (session.getAttribute("cnm") == null) {
                response.sendRedirect("index.jsp");
            } else {

        %>
        <%@page import="java.io.*,java.sql.*" %>
        <%! String cnm, email, addr;
            long phn;
            int custid;%>
        <%      try {
                custid = Integer.parseInt(session.getAttribute("cid").toString());

                cnm = request.getParameter("fname");
                email = request.getParameter("email");
                addr = request.getParameter("addr");
                phn = Long.parseLong(request.getParameter("phone"));

                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");
                String qry = "UPDATE CUSTOMER SET CNAME=?, CEMAIL=?, CADDR=?, CPHONE=? WHERE CUST_ID=?";
                PreparedStatement ps = con.prepareStatement(qry);

                ps.setString(1, cnm);
                ps.setString(2, email);
                ps.setString(3, addr);
                ps.setLong(4, phn);
                ps.setInt(5, custid);

                int r = ps.executeUpdate();
                if (r == 1) {
                    out.println("Record Updated..!!");
                } else {
                    out.println("Record Not Updated..!!");
                }
                response.sendRedirect("myProfile.jsp");
                ps.close();

            } catch (Exception ex) {
                out.println(ex);
            }
        %>
    </body>
</html>
<%}%>