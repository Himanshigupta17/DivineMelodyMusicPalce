<%@page language="java" contentType="text/html ; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,java.util.*"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Courses</title>
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
        <%@page import="java.io.*, java.util.*,java.sql.*" %>
        <%  Blob image = null;
            byte[] imgData = null;
            try {
                ResultSet rs;
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "shopping", "himanshi");
                String qry = "select * from COURSE";
                PreparedStatement ps = con.prepareStatement(qry);
                rs = ps.executeQuery();
        %>

        <header class="header">
            <!-- top navigation of phone no & timings -->
            <div class="details-navbar row ">
                <div class="fa fa-phone col detail">Call: 9315248678</div>
                <div class="fas fa-clock col detail">Timings: 9Am to 7Pm</div>
                <div class="fa fa-envelope col detail"><a href="mailto: himanshigupta9b@gmail.com">
                        MailUs</a></div>
            </div>

            <!-- search bar -->
            <div class="container-fluid ">
                <div class="row search-bar">
                    <div class="first-nav logo col-lg-3 col-md-3 "><img src="images/logo2.jpg"alt="" class="img-fluid">
                    </div>
                    <div class="first-nav search col-lg-6 col-md-7">
                        <form action="search.jsp" method="post" class=" mt-1 d-flex  justify-content-center">
                            <input class=" " type="search" name="search" placeholder="Search" aria-label="Search">
                            <button class="btn" type="submit">Search</button>
                        </form>
                    </div>
                    <div id="mySidenav" class="sidenav">
                        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                        <a href="myProfile.jsp"><i class="fas fa-star"></i> My Profile</a>
                        <a href="myOrders.jsp"><i class="fas fa-truck"></i> My orders</a>
                        <a href="myCourses.jsp"><i class="fa fa-fw fa-book"></i> My Courses</a>
                        <a href="logout.jsp"><i class="fas fa-sign-out-alt"></i> LogOut</a>
                    </div>
                    <div class="first-nav justify-content-end logout mt-2 col-lg-3 col-md-2">
                        <div class="btn account-icon">
                            <a class=" account " href="#" onclick="openNav()"><i class="fas fa-user-circle fs-5"></i></a>
                        </div>
                    </div>
                </div>
                <script>
                    function openNav() {
                        document.getElementById("mySidenav").style.width = "250px";
                    }

                    function closeNav() {
                        document.getElementById("mySidenav").style.width = "0";
                    }
                </script>

                <!-- navbar -->
                <div class="navigation-bar row">
                    <div class="col-lg-10 col-md-10 col-9">
                        <nav class="navbar navbar-expand-lg navbar-light d-flex">
                            <div class="container-fluid">
                                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
                                        aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                                    <ul class="navbar-nav">
                                        <li class="nav-item">
                                            <a class="nav-link active" aria-current="page" href="home.jsp"><i
                                                    class="fa fa-fw fa-home"></i>Home</a>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink"
                                               role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
                                                    class="fas fa-guitar"></i>
                                                Instruments
                                            </a>
                                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                                <li class="dropdown-item sub-dropdown"><a href="#" >Guitars</a><i
                                                        style="margin-left: 7.8rem;" class=" fas fa-chevron-right"></i>
                                                    <ul class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Acoustic Guitars'">Acoustic Guitars</a></li>
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Electric Guitars'">Electric Guitars</a></li>
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Classical Guitars'">Classical Guitars</a></li>

                                                    </ul>
                                                </li>
                                                <li class="dropdown-item sub-dropdown"><a href="#">Ukeles</a><i
                                                        style="margin-left: 8rem;" class=" fas fa-chevron-right"></i>
                                                    <ul class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Saprano'">Saprano</a></li>
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Concert'">Concert</a></li>
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Tenor'">Tenor</a></li>
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Baritone'">Baritone</a></li>
                                                    </ul>
                                                </li>
                                                <li class="dropdown-item sub-dropdown"><a href="#">Keyboards &
                                                        Pianos</a><i style="margin-left: 2.1rem;"
                                                                 class=" fas fa-chevron-right"></i>
                                                    <ul class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Midi Keyboards'">Midi Keyboards</a></li>
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Digital Pianos'">Digital Pianos</a></li>

                                                    </ul>
                                                </li>
                                                <li class="dropdown-item sub-dropdown"><a href="#">Drums &
                                                        Percusions</a><i style="margin-left: 2.1rem;"
                                                                     class=" fas fa-chevron-right"></i>
                                                    <ul class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Acoustic DrumKits'">Acoustic Drumkits</a></li>
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Electronic DrumKits'">Electronic Drunmkits</a></li>

                                                    </ul>
                                                </li>
                                                <li class="dropdown-item sub-dropdown"><a href="#">Traditional
                                                        Instruments</a><i style="margin-left: 1rem;"
                                                                      class=" fas fa-chevron-right"></i>
                                                    <ul class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Violins'">Violins</a></li>
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Banjos'">Banjos</a></li>
                                                    </ul>
                                                </li>
                                                <li  class="dropdown-item sub-dropdown"><a href="#">Wind
                                                        Instruments</a><i style="margin-left: 3.2rem;"
                                                                      class=" fas fa-chevron-right"></i>
                                                    <ul  class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Flutes'">Flutes</a></li>
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Saxophones'">Saxophones</a></li>

                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="nav-item ">
                                            <a class="nav-link" href="courses.jsp" ><i class="fa fa-fw fa-book"></i>Courses</a>    
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="services.jsp"><i class="fa fa-fw fa-wrench"></i>Services</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="contactUs.jsp"><i class="fa fa-fw fa-envelope"></i>Contact Us</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="aboutUs.jsp"><i class="fa fa-users" aria-hidden="true"></i>About Us</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </nav>
                    </div>
                    <div class="col-lg-2 col-md-2 col-3">
                        <div class="shopping-icons d-flex justify-content-end">
                            <a class="nav-link shopping " href="viewCart.jsp" onclick=""><i class="fa fa-shopping-bag fs-5" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section class="container">
            <div class="list grid-container m-3">
                <% while (rs.next()) {
                        int cour_id = rs.getInt("COURSE_ID");
                        image = rs.getBlob("IMAGE");
                        imgData = image.getBytes(1, (int) image.length());
                        String encodedImage = Base64.getEncoder().encodeToString(imgData);
                        String pic = "data:image/jpg;base64," + encodedImage;
                %>
                <div class="card grid-item m-3 ">
                    <img src="<%=pic%>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <p class="fs-5 mb-0"><strong><%=rs.getString("COURSE_NM")%></strong></p>
                    </div>
                    <p class="">Learn <%=rs.getString("INSTRUMENT")%> in 30 Days</p>
                    <p class="fs-5"><%=rs.getString("INSTRUMENT")%></p>
                    <p class="fs-5 fw-bold main-price">Rs. <%=rs.getInt("PRICE")%></p>
                    
                    <div class="card-footer row ">
                        <div class="col-12"><button class="btn" name="pay" onclick="window.location.href = 'paymentCourse.jsp?coid=<%=rs.getInt("COURSE_ID")%>'">BUY NOW</button></div>
                    </div>
                </div>

                <%}%>
                
            </div>
        </section>

        <!-- footer  -->
        <footer class="">
            <div class="container mt-5">
                <div class="row d-flex justify-content-center footer-row">
                    <!--information links-->
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="information">
                            <h4 class="title">INFORMATION</h4>
                            <ul class="information-links ">

                                <li class="information-item about-us">
                                    <a class="information-link" href="about_us.html">About Us</a>
                                </li>

                                <li class="information-item partner-with-us">
                                    <a class="information-link " href="#">Partner with us</a>
                                </li>

                                <li class="information-item privacy-policy">
                                    <a class="information-link " href="#">Privacy Policy</a>
                                </li>

                                <li class="information-item terms-of-use">
                                    <a class="information-link " href="#">Terms of Use</a>
                                </li>

                                <li class="information-item service-centre">
                                    <a class="information-link " href="services.jsp">Divine Service Centre</a>
                                </li>

                                <li class="information-item terms-and-conditions">
                                    <a class="information-link " href="#">Terms and Conditions</a>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <!--Customer service-->
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="cutomer-service">
                            <h4 class="title">CUTOMER SERVICES</h4>
                            <ul class="customer-service-links">

                                <li class="cust-service-item return-policy">
                                    <a class="cust-service-link" href="#">Return Policy</a>
                                </li>

                                <li class="cust-service-item FAQs ">
                                    <a class="cust-service-link " href="FAQ.jsp">FAQ's</a>
                                </li>

                                <li class="cust-service-item secure-payments">
                                    <a class="cust-service-link " href="#">Secure Payments</a>
                                </li>

                                <li class="cust-service-item shipping-delivery">
                                    <a class="cust-service-link " href="#">Shipping & Delivery</a>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <!-- social Media -->
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="social-media">
                            <h4 class="title">SHOW US SOME LOVE ❤ ON SOCIAL MEDIA</h4>
                            <div class="social-icons">
                                <a href="#" class="fab fa-facebook"></a>
                                <a href="#" class="fab fa-twitter"></a>
                                <a href="#" class="fab fa-google"></a>
                                <a href="#" class="fab fa-instagram"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- copyright -->
                <div class="copyright">
                    <p class="text-center">Copyright © 2021 Divine Melody Music Palace</p>
                </div>
            </div>
        </footer>

        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
<%
    } catch (Exception ex) {
        out.println(ex);
    }
%>
<% }%>