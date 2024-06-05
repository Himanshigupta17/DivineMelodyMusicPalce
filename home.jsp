<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Divine Melody Music Palace:Home</title>
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
                                                <li class="dropdown-item sub-dropdown"><a href="#">Keyboards & Pianos</a><i style="margin-left: 2.1rem;"
                                                                 class=" fas fa-chevron-right"></i>
                                                    <ul class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Midi Keyboards'">Midi Keyboards</a></li>
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Digital Pianos'">Digital Pianos</a></li>

                                                    </ul>
                                                </li>
                                                <li class="dropdown-item sub-dropdown"><a href="#">Drums & Percusions</a><i style="margin-left: 2.1rem;"
                                                                     class=" fas fa-chevron-right"></i>
                                                    <ul class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Acoustic DrumKits'">Acoustic Drumkits</a></li>
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Electronic DrumKits'">Electronic Drunmkits</a></li>

                                                    </ul>
                                                </li>
                                                <li class="dropdown-item sub-dropdown"><a href="#">Traditional Instruments</a><i style="margin-left: 1rem;"
                                                                      class=" fas fa-chevron-right"></i>
                                                    <ul class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Violins'">Violins</a></li>
                                                        <li><a href="#" onclick="window.location.href = 'products.jsp?ptype=Banjos'">Banjos</a></li>
                                                    </ul>
                                                </li>
                                                <li  class="dropdown-item sub-dropdown"><a href="#">Wind Instruments</a><i style="margin-left: 3.2rem;"
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
        
        
        <!-- carousal -->
        <section class="mt-4 carouselSection">
            <div class="row">
                <div id="carouselExampleIndicators" class="carousel slide col-lg-9 col-md-8 col-12" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
                                class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3"
                                aria-label="Slide 4"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="images/DIVINE1.png" class="d-block w-100 img-fluid" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="images/divine2.jpg" class="d-block w-100 img-fluid" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="images/Divine3.png" class="d-block w-100 img-fluid" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="images/divine4.jpg" class="d-block w-100 img-fluid" alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
                <div class="col-lg-3 col-md-4 col-12">
                    <img class="img-fluid" src="images/side-image.jpg" alt="">
                </div>
            </div>
        </section>

        <!-- advertisements of 4 -->
        <section class="advertisements my-5">
            <div class="row mb-3 mx-2">
                <div class="col-6">
                    <a href="#" onclick="window.location.href = 'adverProducts.jsp?pcat=Kid'"><img src="images/kids.jpg" alt="" class=""></a>
                </div>
                <div class="col-6">
                    <a href="courses.jsp" class=""><img src="images/learnmusic.png" alt="" class=""></a>
                </div>
            </div>
            <div class="row mb-3 mx-2">
                <div class="col-6">
                    <a href="#" class="" onclick="window.location.href = 'adverProducts.jsp?pcat=Ukeles'"><img src="images/ukuleles.jpg" alt="" class=""></a>
                </div>
                <div class="col-6">
                    <a href="#" onclick="window.location.href = 'adverProducts.jsp?pcat=Guitar'"><img src="images/Bestseller.png" alt="" class=""></a>
                </div>
            </div>
        </section>

        <!-- top categories -->
        <section class="top-category">
            <h3 class="cat-title text-center mb-4">TOP CATEGORIES</h3>
            <div class="row mx-2 mb-4">
                <div class="col-lg-3 col-sm-6 col-6">
                    <div class="card">
                        <img src="images/guitar/electric/3.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <a class="card-text d-block text-center" href="#" onclick="window.location.href = 'products.jsp?ptype=Electric Guitars'">Electric Guitars</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 col-6">
                    <div class="card">
                        <img src="images/guitar/acoustic/1.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <a class="card-text d-block text-center" href="#" onclick="window.location.href = 'products.jsp?ptype=Acoustic Guitars'">Acoustic Guitars</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 col-6">
                    <div class="card">
                        <img src="images/drum kits/2.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <a class="card-text d-block text-center" href="#" onclick="window.location.href = 'products.jsp?ptype=Acoustic DrumKits'">Acoustic Drum Kits</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 col-6">
                    <div class="card">
                        <img src="images/drum kits/The-Best-Electronic-Drum-Sets-Available.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <a class="card-text d-block text-center" href="#" onclick="window.location.href = 'products.jsp?ptype=Electronic DrumKits'">Electronic Drum Kits</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mx-2">
                <div class="col-lg-3 col-sm-6 col-6">
                    <div class="card">
                        <img src="images/midi keyboards/1.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <a class="card-text d-block text-center" href="#" onclick="window.location.href = 'products.jsp?ptype=Midi Keyboards'">Midi Keyboards</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 col-6">
                    <div class="card">
                        <img src="images/violin/2.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <a class="card-text d-block text-center" href="#" onclick="window.location.href = 'products.jsp?ptype=Violins'">Violin</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 col-6">
                    <div class="card">
                        <img src="images/ukele/1.jfif" class="card-img-top" alt="...">
                        <div class="card-body">
                            <a class="card-text d-block text-center" href="#" onclick="window.location.href = 'products.jsp?ptype=Saprano'">Saprano Ukeles</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 col-6">
                    <div class="card">
                        <img src="images/flute/2.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <a class="card-tex d-block text-center" href="#" onclick="window.location.href = 'products.jsp?ptype=Flutes'">Flutes</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- featured-products -->
        <section class="feature-products my-5 ">
            <h3 class="cat-title text-center mb-4">FEATURED PRODUCTS</h3>
            <div class="row mx-2">
                <div class="col-lg-3 col-md-3 col-sm-12 mb-2">
                    <div class="card ">
                        <img src="images/featured products/fender FA125.jpg" class="card-img-top" alt="...">
                        <div class="price">
                            <div class="save">
                                <p class="d-inline">Save 14%</p>
                            </div>
                        </div>
                        <p class="previous-price"><del>Rs. 13,700</del></p>
                        <p class="fs-5 fw-bold main-price">Rs. 11,780</p>
                        <div class="card-body">
                            <a href="" class="card-text">Fender FA-125 Dreadnought Acoustic Guitar With Gig Bag</a>
                        </div>
                        <div class="card-footer row ">
                            <div class="col-6"><button class="btn" name="addToCart" onclick="window.location.href = 'cart.jsp?pid=6001&pnm=Fender FA-125 Dreadnought Acoustic Guitar With Gig Bag&pp=11780'">Add To Cart</button></div>
                            <div class="col-6"><button class="btn" name="viewMore" onclick="window.location.href = 'viewMore.jsp?pid=6001'">View More</button></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 mb-2">
                    <div class="card ">
                        <img src="images/featured products/nitromesh-electronic-drum.jpg" class="card-img-top"
                             alt="...">
                        <div class="price">
                            <div class="save">
                                <p class="d-inline">Save 20%</p>
                            </div>
                        </div>
                        <p class="previous-price"><del>Rs. 42,372</del></p>
                        <p class="fs-5 fw-bold main-price">Rs. 33,989</p>
                        <div class="card-body">
                            <a href="" class="card-text">Alesis Nitro Mesh Kit Eight Piece Electronic Drumkit</a>
                        </div>
                        <div class="card-footer row ">
                            <div class="col-6"><button class="btn" name="addToCart" onclick="window.location.href = 'cart.jsp?pid=6001&pnm=Fender FA-125 Dreadnought Acoustic Guitar With Gig Bag&pp=11780'">Add To Cart</button></div>
                            <div class="col-6"><button class="btn" name="viewMore" onclick="window.location.href = 'viewMore.jsp?pid=6001'">View More</button></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 mb-2">
                    <div class="card ">
                        <img src="images/featured products/VAU-UK100S-1_512x.jpg" class="card-img-top"
                             alt="...">
                        <div class="price">
                            <div class="save">
                                <p class="d-inline">Save 55%</p>
                            </div>
                        </div>
                        <p class="previous-price"><del>Rs. 4,000</del></p>
                        <p class="fs-5 fw-bold main-price">Rs. 1,785</p>
                        <div class="card-body">
                            <a href="" class="card-text">Vault UK-100S 21 inch Soprano Arched Back Ukulele With Gig Bag
                                &amp; Ebook</a>
                        </div>
                        <div class="card-footer row ">
                            <div class="col-6"><button class="btn" name="addToCart" onclick="window.location.href = 'cart.jsp?pid=6001&pnm=Fender FA-125 Dreadnought Acoustic Guitar With Gig Bag&pp=11780'">Add To Cart</button></div>
                            <div class="col-6"><button class="btn" name="viewMore" onclick="window.location.href = 'viewMore.jsp?pid=6001'">View More</button></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 mb-2">
                    <div class="card ">
                        <img src="images/featured products/NEKTARIMPACTGX61-1.jpg" class="card-img-top"
                             alt="...">
                        <div class="price">
                            <div class="save">
                                <p class="d-inline">Save 13%</p>
                            </div>
                        </div>
                        <p class="previous-price"><del>Rs. 12,500</del></p>
                        <p class="fs-5 fw-bold main-price">Rs. 10,900</p>
                        <div class="card-body">
                            <a href="" class="card-text">Nektar Impact GX-61 Midi Keyboard</a>
                        </div>
                        <div class="card-footer row ">
                            <div class="col-6"><button class="btn" name="addToCart" onclick="window.location.href = 'cart.jsp?pid=6001&pnm=Fender FA-125 Dreadnought Acoustic Guitar With Gig Bag&pp=11780'">Add To Cart</button></div>
                            <div class="col-6"><button class="btn" name="viewMore" onclick="window.location.href = 'viewMore.jsp?pid=6001'">View More</button></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- online learning introduction -->
        <section class="online-learning container bg-light">
            <h3 class="online-title text-center mb-4">Welcome To Divine Melody Online Learning</h3>
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12  picture">
                    <img src="images/ukele/1.jfif" alt="" class="" height="80%" width="100%">
                </div>
                <div class="col-lg-6 col-md-6 col-sm-12 content">
                    <p>
                        Established in 1865, Divine Melody has always been a leader in the field of Western music education
                        and knowledge in India. From musical instruments, accessories to print music and digital equipment,
                        we have a complete spectrum of musical instruments in the Western and Indian categories.
                        Divine has grown into a household name in the music business and are spread across Mumbai, Pune,
                        Ahmedabad,Delhi, Chandigarh, Bengaluru, Mangaluru, Panjim and Margao in Goa. With a growing retail
                        network (17 showrooms) and over 350 dealer outlets, Divine Melody holds a record number of international
                        dealerships for top-of-the-line brands in music. Instruments are imported from all across the globe including the
                        USA, Canada, UK, Germany, Netherlands, Denmark, Italy, France, Japan, Korea, Taiwan, Indonesia, China, Malaysia,
                        Vietnam, HongKong and Sri Lanka. Music books are imported from almost every major music publisher.
                    </p>
                </div>
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
                                    <a class="information-link" href="aboutUs.jsp">About Us</a>
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

                                <li class="cust-service-item">
                                    <a class=" " href="FAQ.jsp">FAQ's</a>
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
<%}%>
