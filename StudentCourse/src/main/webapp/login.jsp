<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>HOME</title>
        
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
   
<link rel="stylesheet" href="./style.css">
<link rel="stylesheet" href="./login.css">
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
        
        <section class="courses">
            <h2>LOGIN</h2>
            <div class="container courses__container">
                <article class="course">
                    <div class="course__Image">
                        <img src="./images/admin1.webp">
                    </div>
                <div class="course__info">
                    <h4>Admin Login</h4>
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                     Illo itaque, repudiandae odit soluta consequuntur repellendus.
                      Neque.</p>
                      <a href="./admin_login.jsp" class="btn btn-primary" >Login</a>
                
                </div>    
                </article>

                <article class="course">
                    <div class="course__Image">
                        <img src="./images/faculty1.webp">
                    </div>
                    <div class="course__info">

                    
                    <h4>Faculty Login</h4>
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                     Illo itaque, repudiandae odit soluta consequuntur repellendus.
                      Neque.</p>
                      <a href="./faculty_login.jsp" class="btn btn-primary" >Login</a>
                
                      </div>
                      </article>

                <article class="course">
                    <div class="course__Image">
                        <img src="./images/student1.webp">
                    </div>
                <div class="course__info">
                    <h4>Student Login</h4>
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                     Illo itaque, repudiandae odit soluta consequuntur repellendus.
                      Neque.</p>
                      <a href="student_login.jsp" class="btn btn-primary" >Login</a>
                
                </div>    
                </article>
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







        <script src="./main.js"></script>

       
    </body>
</html>