<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Forget password</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="style2.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    </head>
    <body>
        
        <!--login modal-->
        <div class="modal fade" id="login" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Login</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body Login-Modal">
                        <form action="logincode.jsp">
                            <div class="row">
                                <div class="col-75 login">
                                    <input type="text" id="login-input" name="email/phone"
                                           placeholder="Enter Email or Phone Number">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-75">
                                    <input type="password" name="password" placeholder="Enter password">
                                </div>
                            </div><br>
                            <div class="row">
                                <a href="forgetPass.jsp">Forgot Your Password..?</a>
                            </div>
                            <div class="row">
                                <input type="submit" value="Login" >
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Signup modal  -->
        <div class="modal fade" id="signup" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Sign Up</h5>
                        <p>To quickly find your favourite items, saved addresses and payments.</p>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body SignUp-Modal">
                        <form action="signUp.jsp">
                            <div class="row">
                                <div class="col-25">
                                    <label for="name">Name</label>
                                </div>
                                <div class="col-75">
                                    <input type="text" id="name" name="name" placeholder="Your name..">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-25">
                                    <label for="email">Email</label>
                                </div>
                                <div class="col-75">
                                    <input type="email" id="email" name="email" placeholder="Your email..">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-25">
                                    <label for="phone">Phone No</label>
                                </div>
                                <div class="col-75">
                                    <input type="tel" id="phone" name="phone" placeholder="Your phone number..">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-25">
                                    <label for="">Gender</label>
                                </div>
                                <div class="col-75">
                                    <input type="radio" name="gender" value="male" id="male"><label for="male">Male</label>
                                    <input type="radio" name="gender" value="female" id="female"><label for="female">Female</label>
                                    <input type="radio" name="gender" value="others" id="others"><label for="others">Others</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-25">
                                    <label for="pass">Password</label>
                                </div>
                                <div class="col-75">
                                    <input type="password" id="pass" name="password" placeholder="Your password..">
                                </div>
                            </div>

                            <br>
                            <div class="row submit-button">
                                <input type="submit" value="Sign Up">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <p class="terms-conditions">By continuing, you agree that you have read and accept our T&Cs and
                            Privacy Policy.</p>
                    </div>
                </div>
            </div>
        </div>

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
                    <div class="first-nav logo col-lg-3 col-md-3 "><img src="images/logo2.jpg" alt="" class="img-fluid">
                    </div>
                    <div class="first-nav search col-lg-6 col-md-7">
                        <form class=" mt-1 d-flex  justify-content-center">
                            <input class=" " type="search" placeholder="Search" aria-label="Search">
                            <button class="btn" type="submit">Search</button>
                        </form>
                    </div>
                    <div class="first-nav justify-content-end login-signup mt-2 col-lg-3 col-md-2">
                        <div class="btn ">
                            <button type="button" class="" data-bs-toggle="modal" data-bs-target="#login">
                                Login
                            </button> /
                            <button type="button" class="" data-bs-toggle="modal" data-bs-target="#signup">
                                SignUp</button>
                        </div>
                    </div>
                </div>

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
                                            <a class="nav-link active" aria-current="page" href="index.jsp"><i
                                                    class="fa fa-fw fa-home"></i>Home</a>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink"
                                               role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
                                                    class="fas fa-guitar"></i>
                                                Instruments
                                            </a>
                                            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                                <li class="dropdown-item sub-dropdown"><a href="#">Guitars</a><i
                                                        style="margin-left: 7.8rem;" class=" fas fa-chevron-right"></i>
                                                    <ul class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#">Acoustic Guitars</a></li>
                                                        <li><a href="#">Electric Guitars</a></li>
                                                        <li><a href="#">Classical Guitars</a></li>
                                                        
                                                    </ul>
                                                </li>
                                                <li class="dropdown-item sub-dropdown"><a href="#">Ukeles</a><i
                                                        style="margin-left: 8rem;" class=" fas fa-chevron-right"></i>
                                                    <ul class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#">Saprano</a></li>
                                                        <li><a href="#">Concert</a></li>
                                                        <li><a href="#">Tenor</a></li>
                                                        <li><a href="#">Baritone</a></li>
                                                    </ul>
                                                </li>
                                                <li class="dropdown-item sub-dropdown"><a href="#">Keyboards &
                                                        Pianos</a><i style="margin-left: 2.1rem;"
                                                                 class=" fas fa-chevron-right"></i>
                                                    <ul class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#">Midi Keyboards</a></li>
                                                        <li><a href="#">Digital Pianos</a></li>
                                                        
                                                    </ul>
                                                </li>
                                                <li class="dropdown-item sub-dropdown"><a href="#">Drums &
                                                        Percusions</a><i style="margin-left: 2.1rem;"
                                                                     class=" fas fa-chevron-right"></i>
                                                    <ul class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#">Acoustic Drumkits</a></li>
                                                        <li><a href="#">Electronic Drunmkits</a></li>
                                                        
                                                    </ul>
                                                </li>
                                                <li class="dropdown-item sub-dropdown"><a href="#">Traditional
                                                        Instruments</a><i style="margin-left: 1rem;"
                                                                      class=" fas fa-chevron-right"></i>
                                                    <ul class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#">Violins</a></li>
                                                        <li><a href="#">Banjos</a></li>
                                                    </ul>
                                                </li>
                                                <li  class="dropdown-item sub-dropdown"><a href="#">Wind
                                                        Instruments</a><i style="margin-left: 3.2rem;"
                                                                      class=" fas fa-chevron-right"></i>
                                                    <ul  class="dropdown-menu sub-dropdown-menu">
                                                        <li><a href="#">Flutes</a></li>
                                                        <li><a href="#">Saxophones</a></li>
                                                        
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="nav-item ">
                                            <a class="nav-link" href="#" ><i class="fa fa-fw fa-book"></i>Courses</a>    
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#"><i class="fa fa-fw fa-wrench"></i>Services</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#"><i class="fa fa-fw fa-envelope"></i>Contact Us</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#"><i class="fa fa-users" aria-hidden="true"></i>About
                                                Us</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </nav>
                    </div>
                    <div class="col-lg-2 col-md-2 col-3">
                        <div class="shopping-icons d-flex justify-content-end">
                            <a class="nav-link shopping " href="#"><i class="fa fa-shopping-bag" aria-hidden="true"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

        </header>

        <!--forget password-->
        <section class=" container forget-body">
            <div class="forget">
                <h3 class="title text-center mb-4">Login</h3>
                <h4 class="text-center mb-4">Get your password</h4>
                <p class="">We will send you an email with your password on your Registered Email-Id</p>
                <div class="forgetForm">
                    <form action="forgetCode.jsp">
                        <div class="row ">
                            <input type="email" name="email" placeholder="Enter your registered Email Id" required>
                        </div>
                        <div class="row submit-button mt-3 mb-3">
                            <input type="submit" value="Submit">
                        </div>
                    </form>
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
                                    <a class="information-link" href="#">About Us</a>
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
                                    <a class="information-link " href="#">Divine Service Centre</a>
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
                                    <a class="cust-service-link " href="#">FAQ's</a>
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