<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget Code</title>
    </head>
    <body>
        <%
            if (session.getAttribute("cnm") == null) {
                response.sendRedirect("index.jsp");
            } else {
                
            
        %>
        <%@page import="java.sql.*" %>
        <%@page import="java.util.*,javax.mail.*,javax.mail.internet.*" %>
        <%! String rmail; %>
        <%
            try{
                rmail=request.getParameter("email");
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");
                String qry = "select * from Customer where Cemail="+"'"+rmail+"'";

                PreparedStatement ps = con.prepareStatement(qry);
                
                ResultSet rs=ps.executeQuery();
                if(rs.next()){
                    final String messg=rs.getString("pwd");
                    final String from="himanshigupta9b@gmail.com";
                    final String pass="17march#2000";
                    String host="smtp.gmail.com";
                    String to=rmail;
                    String subject="Password Recovery";
                    
                    //Creating Properties Object
                    Properties props=new Properties();
                    props.put("mail.smtp.host",host);
                    props.put("mail.transport.protocol","smtp");
                    props.put("mail.smtp.auth","true");
                    props.put("mail.smtp.starttls.enable","true");
                    props.put("mail.user",from);
                    props.put("mail.password",pass);
                    props.put("mail.port",587);

                    // Authorized the session object
                    Session mailSession=Session.getInstance(props, new javax.mail.Authenticator() {
                    @Override
                    
                    protected PasswordAuthentication getPasswordAuthentication(){
                        return new PasswordAuthentication(from, pass);
                    }
                    });                   
                    
                    //create a default MimeMessage object.
                    MimeMessage message = new MimeMessage(mailSession);
                    message.setFrom(new InternetAddress(from));
                    message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
                    message.setSubject(subject);
                    message.setText(messg);
                    
                    // Send Message
                    Transport transport = mailSession.getTransport();
                    transport.connect();
                    transport.sendMessage(message, message.getRecipients(Message.RecipientType.TO));
                    transport.close();
                    out.println("Your Password sent to mail successfully..");
                    
                }
                else{
                    out.println("EmailID Not Registered...");
                }
            }
            catch(MessagingException mex){
                out.println(mex);
            }
        %>
    </body>
</html>
<% } %>