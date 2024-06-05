<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>SHIPPING ADDRESS</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style2.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    </head>
    <body>
        <%
            if (session.getAttribute("cnm") == null) {
                response.sendRedirect("index.jsp");
            } else {
        %>
        <header>
            <div class="heading">
                <div class="row logo-title">
                    <div class="col-2 logo"></div>
                    
                </div>
            </div>
        </header>
        <section class="container">
            <div class="row container mt-5">
                <h3 class="text-center mb-4">SHIPPING DETAILS</h3>
                <div class="col-6 address">
                    <form action="putAddress.jsp">
                    <div class="row mt-5">
                        <div class="col-4"><label for="address">Shipping Address</label></div>
                        <div class="col-8"><input type="text" id="address" name="address" required></div>

                    </div>
                    <div class="row mt-4 mb-5 justify-content-center">
                        <input type="submit" value="Ship To This Address">
                    </div>
                </form>
                </div>
            </div>
        </section>
        


        
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
<% } %>