<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PAYMENT</title>
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
        <%@page import="java.io.*,java.sql.*" %>
        <%! int courseid;%>

        <%                try {
                
                courseid = Integer.parseInt(request.getParameter("coid"));
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");

        %>
        <header>
            <div class="heading">
                <div class="row logo-title">
                    <div class="first-nav logo col-lg-1 col-md-1"><img src="images/logo2.jpg"alt="" class="img-fluid"></div>
                    <div class="col-10 title fs-3">PAYMENT</div>
                </div>
            </div>
        </header>
        <div class="payment container mt-5">
            <div class="row">
                <h4 class="mb-4">Payment Method</h4>
                <div class=" col-3">
                    <div class="pay-method" ><a href="#credit/debit"><p>CREDIT/DEBIT CARD</p></a></div>
                </div>
                <div class="pay-cred col-6">
                    <div class="row" id="credit-debit">
                        <h5 class="mb-4">Enter Debit/Credit Card Details</h5>
                        <form action="courseReceipt.jsp">
                            <div class="row  mb-4 d-none">                                
                                <input type="tel" class="form-control" name="courid"  value="<%=courseid %>">
                            </div>
                            <div class="row  mb-4">
                                <div class="col-9 form-floating">
                                    <input type="tel" class="form-control" name="cardno" id="floatingInput" placeholder="name@example.com">
                                    <label for="floatingInput">Card Number</label>
                                </div>
                            </div>
                            <div class="row ">
                                <p d-inline> Expiry date</p>
                                <div class="col-6 form-floating">

                                    <input type="month" id="expiremonth" class="form-control" placeholder="Password" name="expiremonth">
                                    <label for="expiremonth">MM/YY</label>
                                </div>
                                
                                <div class="col-3 form-floating">
                                    <input type="password" class="form-control" name="cvv" id="floatingPassword" placeholder="Password">
                                    <label for="floatingPassword">CVV</label>
                                </div>
                                <div class="col-1 icon">
                                    <p><i class="far fa-credit-card"></i></p>
                                </div>
                            </div>
                            <div class="row">
                                <input type="submit" value="PAY">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
<% } catch (Exception ex) {
                out.println(ex);
            } %>
<% } %>