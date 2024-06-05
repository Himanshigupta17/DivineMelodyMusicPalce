

<%@page language="java" contentType="text/html ; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,java.util.*"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="right">
            <form>
                <%
                    Blob image = null;
                    byte[] imgData = null;
                    try {
                        ResultSet rs;
                        String prod_type = request.getParameter("ptype");

                        Class.forName("oracle.jdbc.driver.OracleDriver");
                        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");
                        String qry = "select PIC1 from Product where P_TYPE=?";

                        PreparedStatement ps = con.prepareStatement(qry);
                        ps.setString(1, "Acoustic Guitars");
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            image = rs.getBlob(1);
                            imgData = image.getBytes(1, (int) image.length());
                            String encodedImage = Base64.getEncoder().encodeToString(imgData);
                            String pic = "data:image/jpg;base64," + encodedImage;
                %>
                <h1>Display image in image tag</h1>
                <img src="<%=pic%>" width="130px" height="90px" alt="not showing">
                <%
                        }
                    } catch (Exception ex) {
                        out.println(ex);
                    }
                %>
            </form>
        </div>
    </body>
</html>
