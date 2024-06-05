<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.io.*,java.sql.*,java.util.*,org.apache.commons.fileupload.disk.DiskFileItemFactory,org.apache.commons.fileupload.servlet.ServletFileUpload,org.apache.commons.fileupload.FileItem" %>
        <%! String pic, cou_nm, inst, link;
            int price,courseid;%>
        <%
            try {
                ResultSet rs;
                DiskFileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload sfu = new ServletFileUpload(factory);

                if (!ServletFileUpload.isMultipartContent(request)) {
                    out.println("sorry. No File Uploaded");
                    return;
                }

                //parse Request
                List items = sfu.parseRequest(request);

                FileItem name = (FileItem) items.get(0);
                String cou_nm = name.getString();

                FileItem instrument = (FileItem) items.get(1);
                String ins = instrument.getString();

                FileItem main_price = (FileItem) items.get(2);
                String pr = main_price.getString();
                price = Integer.parseInt(pr);
                
                FileItem play_link = (FileItem) items.get(3);
                String link = play_link.getString();
                
                FileItem file = (FileItem) items.get(4);
                
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");
                String qry = "insert into COURSE values(?,?,?,?,?,?)";

                String qry2 = "select max(COURSE_ID) from COURSE";
                PreparedStatement ps2 = con.prepareStatement(qry2);
                PreparedStatement ps = con.prepareStatement(qry);

                rs = ps2.executeQuery();
                if (rs.next()) {
                    courseid = rs.getInt(1);
                    courseid++;
                }
                ps.setInt(1, courseid);
                ps.setString(2, cou_nm);
                ps.setString(3, ins);
                ps.setInt(4, price);
                
                ps.setBinaryStream(5,file.getInputStream(), (int) file.getSize());
                ps.setString(6, link);
                ps.executeUpdate();
                response.sendRedirect("admin_interface.jsp");

            } catch (Exception ex) {
                out.println(ex);
            }
        %>
    </body>
</html>
