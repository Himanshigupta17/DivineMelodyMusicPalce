<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>FAQ's</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style2.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    </head>
    <body>
        
        <!--header-->
        <header class="header">
            <!-- top navigation of phone no & timings -->
            <div class="details-navbar row ">
                <div class="fa fa-phone col detail">Call: 9315248678</div>
                <div class="fas fa-clock col detail">Timings: 9Am to 7Pm</div>
                <div class="fa fa-envelope col detail"><a href="mailto: zihimanshiguptazu@gmail.com">
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

        <!--FAQ CODE-->
        <h3 class="title text-center mb-5 mt-5">FREQUENTLY ASKED QUESTIONS</h3>
        <div class="accordion container" id="accordionExample">
            <div class="accordion-item mb-3">
                <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        How does DIVINE’s 15-day money back guarantee work?
                    </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <p>Receive a full refund for any reason if you return a product within 15 days of your delivery date that is still in brand new condition with the original packaging and with all items delivered with the product.</p> 
                    </div>
                </div>
            </div>
            <div class="accordion-item mb-3">
                <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        What modes of payments does divineMelody.com accept?
                    </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <p>Divine accepts payment by debit and credit cards.</p>
                    </div>
                </div>
            </div>
            <div class="accordion-item mb-3">
                <h2 class="accordion-header" id="headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        How much time does it take to ship my order?  
                    </button>
                </h2>
                <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <p>The actual shipping transit time is 4-6 working days anywhere in India.
                            Most customers receive their product(s) within 12-15 business days of placing their order.</p>
                        <p>The process is as follows:</p>
                        <p class="text-center">Order on divineMelody.com ----></p>
                        <p class="text-center">Physical Stock Verification ----></p>
                        <p class="text-center">Product moved to the office for testing ----></p>
                        <p class="text-center">The product is tested and packed ----></p>
                        <p class="text-center">Then the product is shipped.<p>

                        <p>Moving a product from our warehouse or a supplier's warehouse to our office usually takes 2-3 days.
                            After this, the product is tested and packed. Depending on the workload and number of pending orders,
                            which are always more than we can handle, this can take another 3-4 day.</p>
                        <p>Note: Business days do not include Saturdays and Sundays.</p>
                        <p>Musical instruments and pro audio equipment are fragile and sensitive products and need to be tested and packaged carefully.
                            While we are unable to ship at lightning fast speeds, our methods ensure a near-zero transit-damage rate in India,
                            and we'd like to keep it that way. Getting your product reach safely to you is our top priority :)</p>
                    </div>
                </div>
            </div>
            <div class="accordion-item mb-3">
                <h2 class="accordion-header" id="headingFour">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                        How will you ship my order? 
                    </button>
                </h2>
                <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        Nation-wide shipping is an integral part of our business with:
                        <p align="center">
                            <img src="images/shipping_grande.jpg" alt="">
                        </p>
                        FedEx                             BLUE DART SPEED POST
                    </div>
                </div>
            </div>
            <div class="accordion-item mb-3">
                <h2 class="accordion-header" id="headingFive">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                        Is my instrument safe during shipping? 
                    </button>
                </h2>
                <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <p>Our packaging philosophy is simple: It ain't packed unless you can play football with it.</p>
                        <p>Since over 90% of our orders are shipped outside Mumbai, we have naturally developed considerable experience and expertise in the art of packaging and shipping. The average time we spend on packing a guitar is 45 minutes, and for a drumkit, we spend almost 1.5 hours! We use the following materials to ensure shipping safety:</p>
                        <p>Bubble Wrap</p>
                        <p>Custom-made DIVINE MELODY Hardboard Cartons made of heavy-duty 5/7 Ply Hardboard over and above the regular manufacturer packaging</p>
                        <p>Further, all instruments shipped from BAJAAO comes with free transit insurance. In the remote event of your instrument getting damaged during shipping, you are entitled to a replacement or a full refund as per your preference.</p>
                    </div>
                </div>
            </div>
            <div class="accordion-item mb-3">
                <h2 class="accordion-header" id="headingSix">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                        What Indian cities does divineMelody.com ship musical instruments and pro audio equipment to? 
                    </button>
                </h2>
                <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <p>Every state, every city, and every village. Over 20,000 Serviceable pincodes.</p>
                    </div>
                </div>
            </div>
            <div class="accordion-item mb-3">
                <h2 class="accordion-header" id="headingSeven">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                        What happens if my payment got debited but the order did not go through? 
                    </button>
                </h2>
                <div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven" data-bs-parent="#accordionExample">
                    <div class="accordion-body">
                        <p>In such cases, we receive a confirmation within 24 hours from our payment gateway, and a manual order is created.
                            You will receive two emails - one confirming payment and one confirming your order.
                            If you have not received these emails after 24 hours, please call us on +9315216782.</p>
                    </div>
                </div>
            </div>
        </div>

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
