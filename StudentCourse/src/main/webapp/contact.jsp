<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>HOME</title>
        <link rel="stylesheet" href="./style.css">
        <link rel="stylesheet" href="./contact.css">
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css"
/>    

</head>
    <body>
        <nav>
            <div class="container nav__container">
                <a href="./index.html" ><h4>REACH</h4></a>
                <ul class="nav__menu">
                    <li><a href="index.jsp">HOME</a></li>
                    <li><a href="about.jsp">ABOUT</a></li>
                    <li><a href="courses.jsp">COURSES</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                    <li><a href="login.jsp">LOGIN</a></li>
                </ul>
                <button id="open-menu-btn"> <i class="uil uil-bars"></i></button>
                <button id="close-menu-btn"><i class="uil uil-multiply"></i></button>
            </div>
        </nav>
        
        
        

<section class="contact">
    <div class="container contact__container">
        <aside class="contact__aside">
            <div class="aside__image">
                <img src="./images/contact.webp">
            </div>
            <h2>Contact Us</h2>
            <p>Please fill the details for contacting us about your issues.</p>
                <ul class="contact__details">
                    <li>
                        <i class="uil uil-phone-times"></i>
                        <h5>7032934689</h5>
                    </li>
                    <li>
                        <i class="uil uil-envelope"></i>
                        <h5>shanmukhikkurthi9@gmail.com</h5>
                    </li>
                    <li>
                        <i class="uil uil-location-point"></i>
                        <h5>KL University,Vaddeswaram</h5>
                    </li>
                </ul>
                <ul class="contact__socials">
                    <li><a href="https://facebook.com"><i class="uil uil-facebook-f"></i></a>
                    </li>
                    <li><a href="https://instagram.com"><i class="uil uil-instagram"></i></a></li>
                    <li><a href="https://twitter.com"><i class="uil uil-twitter"></i></a></li>
                    <li><a href="https://linkedin.com"><i class="uil uil-linkedin"></i></a></li>

                </ul>
        </aside>
        <form class="contact__form"  action="https://formspree.io/f/xjvqjede"
        method="POST"> 
            <div class="form__name">
                <input type="text" name="First Name" placeholder="First Name" required>
                <input type="text" name="Last Name" placeholder="Last Name" required>
            </div>
            <input type="email" name="Email Address" placeholder="Your Email Address" required>
            <textarea name="Message"rows="7" placeholder="Message"></textarea>
            <button type="submit" class="btn btn-primary">Send Message</button>

        </form>

    </div>

</section>

        


        


        <footer class="footer">
            <div class="container footer__container">
                <div class="footer__1">
                <a href="index.html" class="footer__logo"><h4>REACH</h4></a>
                <p>
                    Reaches every corner of your mind
                </p>
                </div>
            <div class="footer__2">
                <h4>Permalinks</h4>
                <ul class="permalinks">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="courses.html">Courses</a></li>
                    <li><a href="contact.html">Contact</a></li>

                </ul>

            </div>
            <div class="footer__3">
                <h4>Privacy</h4>
                <ul class="privacy">
                    <li><a href="#">Privacy and Policy</a></li>
                    <li><a href="#">Terms ans Conditions</a></li>
                    <li><a href="#">Refund Policy</a></li>

                </ul>

            </div>
            <div class="footer__4">
                <h4>Contact Us</h4>
                <div>
                    <p>+91 7032934689</p>
                    <p>shanmukhikkurthi9@gmail.com</p>
                </div>
                <ul class="footer__socials">
                    <li>
                        <a href="#" ><i class="uil uil-facebook-f"></i></a>
                    </li> 
                    <li>
                        <a href="#" ><i class="uil uil-instagram-alt"></i></a>
                    </li>
                    <li>
                        <a href="#" ><i class="uil uil-twitter"></i></a>
                    </li>
                    <li>
                        <a href="#" ><i class="uil uil-linkedin-alt"></i></a>
                    </li>
                </ul>
            </div>
            <div class="footer__copyright">
                <p>Copyright &copy; REACH </p>
            </div>
            </div>
        </footer>







        <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
        <script src="./main.js"></script>

        <script>
            var swiper = new Swiper(".mySwiper", {
      slidesPerView: 1,
      spaceBetween: 30,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
      breakpoints:{
        600:{
            slidesPerView:2
        }
      }
    });
        </script>
    </body>
</html>