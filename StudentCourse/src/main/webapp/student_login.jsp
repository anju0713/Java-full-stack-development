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
<style>
        body {
           
            justify-content: center;
            align-items: center;
           
        }
        .card-container {
            background: #fff;
            border: 2px solid #333;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 400px;
            text-align: center;
        }
        .student-login__form {
            text-align: center;
        }
        .student-login__links {
            margin-top: 10px;
        }
        .text-center{
            text-align: center;
        }
    </style>
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
        
        
        

<section class="student-login"> 
                    <div class="container student-login__container">
                        <div class="card">
                            <div class="card-body">
                                <h2 class="card-title">Student Login</h2>
                                <form class="student-login__form" action="checklogin" method="POST">
                                    <div class="form-group">
                                        <input type="text" name="username" class="form-control" placeholder="Username" required style="width: 250px; background-color: black;">
                                    <br><br>
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" class="form-control" placeholder="Password" required style="width: 250px; background-color: black;"">
                                    <br><br>
                                    </div>
                <c:if test="${not empty msg}">
    <div class="error-message">${msg}</div>
</c:if>
                                    <button type="submit" class="btn btn-primary btn-block">Login</button>
                                    <br><br>
                                </form>
                
                                <div class="text-center">
                                    <a href="forgotpassword.jsp">Forgot Password</a> |<a href="/register"> Register</</a>
                                </div>
                            </div>
                        </div>
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