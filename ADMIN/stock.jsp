<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="admin.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    </head>
    <body>
        <%@page import="java.io.*, java.util.*,java.sql.*" %>
        <%
            try {
                ResultSet rs;

                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");
                String qry = "select * from PRODUCT ";

                PreparedStatement ps = con.prepareStatement(qry);

                rs = ps.executeQuery();
        %>        
        <div class="stock m-3 mt-0">
            <div class="row heading">
                <div class="col-1"> Product ID </div>
                <div class="col-6"> Product Name </div>
                <div class="col-2"> Product Type </div>
                <div class="col-1"> Quantity </div>
                <div class="col-2"> Update </div>
            </div>
            <%        while (rs.next()) {
                    int pro_id = rs.getInt("prod_ID");

            %>

            <div class="row items">
                <div class="col-1"> <%=rs.getInt("prod_ID")%> </div>
                <div class="col-6"> <%=rs.getString("P_NAME")%> </div>
                <div class="col-2"> <%=rs.getString("P_TYPE")%> </div>
                <div class="col-1"> <%=rs.getInt("QUANTITY")%> </div>
                <div class="col-2">
                    <form id="quantity" class="d-flex" action="stockCode.jsp">
                        <input type="text" name="pid" value="<%=rs.getInt("prod_ID")%>">
                        <input type="number" placeholder="change" min="0" max="99" name="update">
                        <div class="row submit-button">
                            <input type="submit" value="Update">
                        </div>
                    </form>
                </div>
            </div>


            <%}%>
        </div>
        <% } catch (Exception ex) {
                out.println(ex);
            }
        %>
    </body>
</html>
