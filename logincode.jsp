
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function show(){
                alert('Invalid Credentials....!!! ');
                window.location.href="index.jsp";
            }
        </script>
    </head>
    <body>
         <%@page import="java.io.*,java.sql.*" %>
        <%! String pwd,email; %>
        <%
            try{
                ResultSet rs;
                email=request.getParameter("email/phone"); 
                pwd=request.getParameter("password");
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","shopping","himanshi");
                String qry="select * from Customer where Cemail=? and pwd=?";
                
                PreparedStatement ps=con.prepareStatement(qry);                
                ps.setString(1, email);                
                ps.setString(2, pwd);                
                rs=ps.executeQuery();
                if(rs.next()){
                    session.setAttribute("cid", rs.getInt("CUST_ID"));
                    session.setAttribute("cnm", rs.getString("Cname"));
                    response.sendRedirect("home.jsp");
                }
                else{   %>
                <script>show()</script>
              <%  }
               
                ps.close();
                
            }
            catch(Exception ex){
                out.println(ex);
            }
        %>
    </body>
</html>
