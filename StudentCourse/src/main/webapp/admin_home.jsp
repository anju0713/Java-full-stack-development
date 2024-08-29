<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>HOME</title>
        
        <link rel="stylesheet" href="./style.css">
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
                <a href="index.jsp" ><h4>REACH</h4></a>
                <ul class="nav__menu">
                    <li><a href="admin_home.jsp">HOME</a></li>
                    <li><a href="index.jsp">LOGOUT</a></li>
                </ul>
                <button id="open-menu-btn"> <i class="uil uil-bars"></i></button>
                <button id="close-menu-btn"><i class="uil uil-multiply"></i></button>
            </div>
        </nav>
        <header>
            <div class="container header__container">
                <div class="header__left">
                    <h1>Welcome Admin</h1>
                    
                    
                </div>
                <div class="header__right">
                    <div class="header__right-image">
                        <img src="./images/back1.webp">
                        
                    </div>
                </div>
            </div>
        </header>
        
<section class="courses">
            <h2>Admin Options</h2>
            <div class="container courses__container">
                <article class="course">
                   
                <div class="course__info">
                    <h4>Students</h4>
                    <p>ADD,EDIT,AND DELETE STUDENTS</p>
                      <a href="/clients" class="btn" style="color:white;" >View</a>
                
                </div>    
                </article>

                <article class="course">
                    
                    <div class="course__info">

                    
                    <h4>Faculty</h4>
                    <p>ADD,EDIT,AND DELETE FACULTY</p>
                      <a href="/facultys" class="btn" style="color:white;" >View</a>
                
                      </div>
                      </article>

                <article class="course">
                    
                <div class="course__info">
                    <h4>Courses</h4>
                    <p>ADD,EDIT,AND DELETE COURSES</p>
                      <a href="courses.html" class="btn" style="color:white;" >View</a>
                
                </div>    
                </article>
            </div>
        </section>

        <footer class="footer">
            <div class="container footer__container">
                <div class="footer__1">
                <a href="index.jsp" class="footer__logo"><h4>REACH</h4></a>
                <p>
                   Reaches every corner of your mind
                </p>
                </div>
            <div class="footer__2">
                <h4>Permalinks</h4>
                <ul class="permalinks">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="courses.jsp">Courses</a></li>
                    <li><a href="contact.jsp">Contact</a></li>

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