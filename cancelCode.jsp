<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cancel code</title>
        <script type="text/javascript">
      function msg() {
          alert('Your Order Has Been Successfully Cancelled');
          window.location.href="myOrders.jsp";
      }
        </script>
    </head>
    <body>
        <%
            if (session.getAttribute("cnm") == null) {
                response.sendRedirect("index.jsp");
            } else {

        %>
        <%@page import="java.io.*, java.util.*,java.sql.*,java.sql.Date" %>
        <%!
            
            int custid, ordid;
            ResultSet rs, rs2;
        %>
        <%  try {
                java.util.Date today = new java.util.Date();
                Date cdate = new java.sql.Date(today.getTime());
                ordid = Integer.parseInt(request.getParameter("oid"));

                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");

                
                String qry = "select * from orderdetails where ORDERID=?";

                PreparedStatement ps = con.prepareStatement(qry);
                ps.setInt(1, ordid);
                rs = ps.executeQuery();
                while (rs.next()) {
                    String qry2 = "INSERT INTO CANCELDETAILS VALUES(?,?)";
                    PreparedStatement ps2 = con.prepareStatement(qry2);
                    ps2.setInt(1, ordid);
                    ps2.setString(2, cdate.toString());
                    ps2.executeUpdate();
                }
                String qry3 = "DELETE FROM ORDERDETAILS WHERE ORDERID=?";
                    PreparedStatement ps3 = con.prepareStatement(qry3);
                    ps3.setInt(1, ordid);  
                    ps3.executeUpdate();
                   %>
                   
             <script>msg();</script>
      
  
    
    </body>
</html>
<%    } catch (Exception ex) {
        out.println(ex);
    }
%>
<% }%>