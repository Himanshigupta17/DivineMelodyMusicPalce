<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.io.*,java.sql.*,java.util.*,org.apache.commons.fileupload.disk.DiskFileItemFactory,org.apache.commons.fileupload.servlet.ServletFileUpload,org.apache.commons.fileupload.FileItem" %>
        <%! String pic, p_nm, p_type, p_cat, p_brand;
            int save, main_p, disc_p, quantity, pid;%>
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
                String p_nm = name.getString();

                FileItem category = (FileItem) items.get(1);
                String p_cat = category.getString();

                FileItem sub_type = (FileItem) items.get(2);
                String p_type = sub_type.getString();

                FileItem brand = (FileItem) items.get(3);
                String p_brand = brand.getString();

                FileItem save_per = (FileItem) items.get(4);
                String save_percent = save_per.getString();
                save = Integer.parseInt(save_percent);

                FileItem main_price = (FileItem) items.get(5);
                String mp = main_price.getString();
                main_p = Integer.parseInt(mp);

                FileItem disc_price = (FileItem) items.get(6);
                String dp = disc_price.getString();
                disc_p = Integer.parseInt(dp);

                FileItem quant = (FileItem) items.get(7);
                String quan = quant.getString();
                quantity = Integer.parseInt(quan);

                FileItem file = (FileItem) items.get(8);
                FileItem file2 = (FileItem) items.get(9);
                FileItem file3 = (FileItem) items.get(10);
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");
                String qry = "insert into Product values(?,?,?,?,?,?,?,?,?,?,?,?)";

                String qry2 = "select max(Prod_ID) from Product";
                PreparedStatement ps2 = con.prepareStatement(qry2);
                PreparedStatement ps = con.prepareStatement(qry);

                rs = ps2.executeQuery();
                if (rs.next()) {
                    pid = rs.getInt(1);
                    pid++;
                }
                ps.setInt(1, pid);
                ps.setString(2, p_nm);
                ps.setString(3, p_cat);
                ps.setString(4, p_type);
                ps.setString(5, p_brand);
                ps.setInt(6, save);
                ps.setInt(7, main_p);
                ps.setInt(8, disc_p);
                ps.setInt(9, quantity);
                ps.setBinaryStream(10,file.getInputStream(), (int) file.getSize());
                ps.setBinaryStream(11,file2.getInputStream(), (int) file2.getSize());
                ps.setBinaryStream(12,file3.getInputStream(), (int) file3.getSize());
                
                ps.executeUpdate();
                response.sendRedirect("admin_interface.jsp");

            } catch (Exception ex) {
                out.println(ex);
            }
        %>
    </body>
</html>
