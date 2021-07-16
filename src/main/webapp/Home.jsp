<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
    <title>Ordering System</title>
    <link rel="stylesheet" href="Style1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=New+Tegomin&family=Tinos&family=Volkhov:ital,wght@1,700&display=swap" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script> 

</head>
<body>
    <section id="banner">
        <img src="Images/logo1.png" class="logo">
        <div class="banner-text">
            <h1>dosed up</h1>
            <p>"Feeling better starts here"</p>
            
            <div class="banner-btn">
                <a href="ManuLogin.jsp"><span></span>Sign In</a>
                
            </div>
        </div>
    </section>
    <div id="sideNav">
        <nav>
            <ul>
                <li><a href="#banner">HOME</a></li>
                <li><a href="#feature">FEATURES</a></li>
                <li><a href="#service">SERVICES</a></li>
                <li><a href="#test">TESTIMONIALS</a></li>
                
            </ul>
        </nav>
    </div>
    <div id="menuBtn">
        <img src="Images/menu.png" id="menu">
    </div>

    <!------------------------------------------------->

    <section id="feature">
        <div class="title-text">
            <p>FEATURES</p>
            <h1>You can always expect</h1>
        </div>
        <div class="feature-box">
            <div class="features">
                <h1>Well Protection</h1>
                <div class="features-desc">
                    <div class="feature-icon">
                        <i class="fa fa-shield"></i>
                    </div>
                    <div class="feature-text">
                        <p>Medical information that you provide to us is protected by our practices and by law.</p>
                    </div>
                </div>
                 <h1>Affordable Cost</h1>
                <div class="features-desc">
                    <div class="feature-icon">
                        <i class="fa fa-inr"></i>
                    </div>
                    <div class="feature-text">
                        <p>Our pricing is clear and understandable.</p>
                    </div>
                </div>
                 <h1>On time</h1>
                <div class="features-desc">
                    <div class="feature-icon">
                        <i class="fa fa-check-square-o"></i>
                    </div>
                    <div class="feature-text">
                        <p>We deliver your medication on time, in discreet packaging.</p>
                    </div>
                </div>
            </div>
            <div class="features-img">
                <img src="Images/img12.jpg">
            </div>
        </div>
    </section>

    <!--------Service---------------------------->

    <section id="service">
       <div class="title-text">
            <p>Services</p>
            <h1>We Provide Better</h1>
        </div>
        <div class="service-box">
            <div class="single-service">
                <img src="Images/img7.jpg">
                <div class ="overlay"></div>
                <div class="service-desc">
                    <h3>Sign up for dosed up</h3>
                    <hr>
                    <p>Set up your profile and login.</p>
                </div>
            </div>
            <div class="single-service">
                <img src="Images/img4.jpg">
                <div class ="overlay"></div>
                <div class="service-desc">
                    <h3>Search your meds</h3>
                     <hr>
                    <p>Compare prices and manufacturers.</p>
                </div>
            </div>
            <div class="single-service">
                <img src="Images/img17.jpg">
                <div class ="overlay"></div>
                <div class="service-desc">
                    <h3>Place your order</h3>
                     <hr>
                    <p>We’ll get your prescriptions.</p>
                </div>
            </div>
            <div class="single-service">
                <img src="Images/img11.jpg">
                <div class ="overlay"></div>
                <div class="service-desc">
                    <h3>Satisfaction Guaranteed</h3>
                     <hr>
                    <p>Meds delivered on your terms.</p>
                </div>
            </div>
        </div> 
    </section>

    <!--------------------------------------------------------------------->

    <section id="test">
        <div class="title-text">
            <p>Testimonial</p>
            <h1>What Client Says</h1>
        </div>
        <div class="test-row">
            <div class="test-col">
                <div class="user">
                    <div class="user-info"><h5>demo name1</h5></div>
                </div>
                <p>Use the product search bar to browse medications before signing up. We'll show you prices without insurance, including any Amazon Prime savings.</p>
            </div>
            <div class="test-col">
                <div class="user">
                    <div class="user-info"><h5>demo name2</h5></div>
                </div>
                <p>Use the product search bar to browse medications before signing up. .</p>
            </div>
            <div class="test-col">
                <div class="user">
                    <div class="user-info"><h5>demo name3</h5></div>
                </div>
                <p>Use the product search bar to browse medications. We'll show you prices without insurance, including any Amazon Prime savings.</p>
            </div>
        </div>
    </section>
<!------------------------------------footer------------------------------------>
    <section id="footer">
        <img src="Images/logo.png" class="footer-img">
        <div class="title-text">
            <p>dosed up</p>
            <h1>Save time, Stay healthy</h1>
        </div>
        <div class="footer-row">
            <div class="footer-left">
                <h1>About Us</h1>
                <p><i class="fa fa-child"></i>Our Mission</p>
                <p><i class="fa fa-comments"></i>Testimonials</p>
            </div>
            <div class="footer-right">
                <h1>Get in Touch</h1>
                <p>No.10, Galle Road, Dehiwala<i class="fa fa-map-marker"></i></p>
                <p>dosedup@gmail.com<i class="fa fa-paper-plane"></i></p>
                <p>0771234567<i class="fa fa-phone"></i></p>
            </div>
        </div>

        <div class="social-links">
            <i class="fa fa-facebook"></i>
            <i class="fa fa-instagram"></i>
            <i class="fa fa-twitter"></i>
            <i class="fa fa-youtube-play"></i>
            <p>Copyright © dosedup.com. All Rights Reserved.</p>
        </div>
    </section>



    <script>
        var menuBtn = document.getElementById("menuBtn")
        var sideNav = document.getElementById("sideNav")
        var menu = document.getElementById("menu")

        sideNav.style.right = "-250px";

        menuBtn.onclick = function(){
            if(sideNav.style.right == "-250px"){
                sideNav.style.right = "0";
                menu.src = "Images/close.png";
            }
            else{
                sideNav.style.right = "-250px";
                menu.src = "Images/menu.png";
            }
        }

        var scroll = new SmoothScroll('a[href*="#"]', {
            speed: 1000,
            speedAsDuration: true
        });
    </script>

    
</body>
</html>