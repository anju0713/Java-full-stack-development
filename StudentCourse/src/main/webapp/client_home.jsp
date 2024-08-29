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
                    <li><a href="client_home.jsp">HOME</a></li>
                     <li><a href="/doubts">ASK DOUBTS</a></li>
                    
                   
                    <li><a href="index.jsp">LOGOUT</a></li>
                </ul>
                <button id="open-menu-btn"> <i class="uil uil-bars"></i></button>
                <button id="close-menu-btn"><i class="uil uil-multiply"></i></button>
            </div>
        </nav>
        <header>
            <div class="container header__container">
                <div class="header__left">
                    <h1>Welcome Student</h1>
                    <p>Our website is helpful for students with online studying.
                        We also help faculty to easily access courses and students.

                    </p>
                    <a href="courses.jsp" class="btn" style="color:white;">Get Started</a>
                </div>
                <div class="header__right">
                    <div class="header__right-image">
                        <img src="./images/back1.webp">
                        
                    </div>
                </div>
            </div>
        </header>
        <h1>Take Tests:</h1>
        <a href="quiz.jsp">Quiz</a>
        <section class="categories">
            <div class="container categories__container">
                <div class="categories__left">
                    <h1>Categories</h1>
                    <p>Various categories that are present in our website are mentoned below: 
                         </p>
                          <a href="courses.jsp" class="btn" style="color:white;">Learn More</a>
                </div>
                
                <div class="categories__right">
                    <article class="category">
                        <span class="category__icon"><i class="uil uil-bitcoin-circle"></i>
                            </span>
                            <h5>Coding</h5>
                            <p>
                                This course makes it easy for students to learn coding.  
                            </p>
                        
                    </article>
                    <article class="category">
                        <span class="category__icon"><i class="uil uil-palette"></i>
                            </span>
                            <h5>Graphic Design</h5>
                            <p>
                                Students who are interested in designing and art can learn this course.
                            </p>
                    </article>
                    <article class="category">
                        <span class="category__icon"><i class="uil uil-usd-circle"></i>
                            </span>
                            <h5>Finance management</h5>
                            <p>
                                This course helps students in managing the finance problems.
                            </p>
                    </article>
                    <article class="category">
                        <span class="category__icon"><i class="uil uil-megaphone"></i>
                            </span>
                            <h5>Lnguages</h5>
                            <p>
                                It is important to learn different languages.
                            </p>
                    </article>
                    <article class="category">
                        <span class="category__icon"><i class="uil uil-music"></i>
                            </span>
                            <h5>Music</h5>
                            <p>
                            Art classes    
                            </p>
                    </article>
                    <article class="category">
                        <span class="category__icon"><i class="uil uil-puzzle-piece"></i>
                            </span>
                            <h5>Logic Building</h5>
                            <p>
                                Those who want to improve their logical thinking can opt for this course.   
                            </p>
                    </article>
                    
                </div>
            </div>
        </section>
        <section class="courses">
            <h2>Our Popular Courses</h2>
            <div class="container courses__container">
               <article class="course">
                    <div class="course__Image">
                        <img src="./images/course1.png">
                    </div>
                <div class="course__info">
                    <h4>JAVA</h4>
                    <p>

Java is a popular, object-oriented programming language renowned for its platform independence through the Java Virtual Machine (JVM). It's commonly used for web, mobile, and enterprise application development.</p>
                      <a href="java.jsp" class="btn" style="color:white;" >Learn More</a>
                
                </div>    
                </article>

                <article class="course">
                    <div class="course__Image">
                        <img src="./images/course2.png">
                    </div>
                    <div class="course__info">

                    
                    <h4>C Language</h4>
                    <p>
C is a widely adopted, procedural programming language prized for its efficiency and system-level programming capabilities. It's a preferred choice for developing operating systems, embedded systems, and performance-critical software.</p>
                      <a href="login.jsp" class="btn" style="color:white;" >Learn More</a>
                
                      </div>
                      </article>

                <article class="course">
                    <div class="course__Image">
                        <img src="./images/course3.png">
                    </div>
                <div class="course__info">
                    <h4>PYTHON</h4>
                    <p>Python is a high-level, interpreted programming language valued for its readability and ease of use. It's popular for web development, data analysis, artificial intelligence, and automation.
						It has extensive libraries and frameworks for various purposes, including web development 



                    </p>
                      <a href="login.jsp" class="btn" style="color:white;" >Learn More</a>
                
                </div>    
                </article>
            </div>
        </section>



        <section class="faqs">
            <h2>Frequesntly Asked Questions</h2>
            <div class="container faqs__container">
                <article class="faq">
                   <div class="faq__icon">
                    <i class="uil uil-plus"></i>
                   </div> 
                   <div class="question__answer">
                    <h4>How do i know the right courses for me?</h4>
                    <p>Consider your interests, career goals, and skills. Research course options, consult advisors, and choose 
                    those that align with your passions and long-term objectives. Remain flexible and open to exploring new opportunities.</p>   
                </div> 
                </article>

                <article class="faq">
                    <div class="faq__icon">
                     <i class="uil uil-plus"></i>
                    </div> 
                    <div class="question__answer">
                     <h4>How many courses do i need to learn?</h4>
                     <p>The number of courses you need to learn depends on your goals and the subjects you're interested in. Some careers require specific degrees, 
                     while others may only need a few relevant courses. Focus on quality, not quantity, to achieve your objectives.</p>   
                 </div> 
                 </article>

                 <article class="faq">
                    <div class="faq__icon">
                     <i class="uil uil-plus"></i>
                    </div> 
                    <div class="question__answer">
                     <h4>How much time does the course require?</h4>
                     <p>The time required for a course varies widely, from a few weeks for short online courses to several years for a full-degree program. 
                     It depends on the course's depth, complexity, and your study pace. Consider your availability and objectives when choosing courses. 
                         </p>   
                 </div> 
                 </article>
                 <article class="faq">
                    <div class="faq__icon">
                     <i class="uil uil-plus"></i>
                    </div> 
                    <div class="question__answer">
                     <h4>Do I need to attend classes? Can I work remotely? </h4>
                     <p>
It depends on the course. Some require in-person attendance, while others offer remote or online options. 
Check the course details and choose one that suits your preferred learning style and circumstances.</p>   
                 </div> 
                 </article>
                 <article class="faq">
                    <div class="faq__icon">
                     <i class="uil uil-plus"></i>
                    </div> 
                    <div class="question__answer">
                     <h4>Is the professor approachable and flexible?</h4>
                     <p>
The approachability and flexibility of professors vary. Research instructor reviews and reach out to current or former students for insights. 
Some professors may be more accommodating than others, so choose courses with instructors that align with your preferences.</p>   
                 </div> 
                 </article>
                 <article class="faq">
                    <div class="faq__icon">
                     <i class="uil uil-plus"></i>
                    </div> 
                    <div class="question__answer">
                     <h4>Will I need special equipment and materials?</h4>
                     <p>Course-specific requirements vary; some may need special equipment or materials. Review the course syllabus or contact the instructor to understand what's necessary. 
                     Prepare in advance to ensure you have access to any required resources.</p>   
                 </div> 
                 </article>

                 <article class="faq">
                    <div class="faq__icon">
                     <i class="uil uil-plus"></i>
                    </div> 
                    <div class="question__answer">
                     <h4>Does the grading scheme show off my capabilities?</h4>
                     <p>
The grading scheme's effectiveness in showcasing your capabilities can vary. 
It depends on the course and assessment methods. Focus on understanding and mastering the course material to demonstrate your abilities effectively.</p>   
                 </div> 
                 </article>
                 <article class="faq">
                    <div class="faq__icon">
                     <i class="uil uil-plus"></i>
                    </div> 
                    <div class="question__answer">
                     <h4>What are the benefits of choosing coding related courses?</h4>
                     <p>High demand: Coding skills are in high demand across various industries, offering excellent job prospects.
Problem-solving: Coding courses improve problem-solving skills and logical thinking, valuable in many careers.
Innovation: Coding can lead to the development of innovative tech solutions and entrepreneurial opportunities.</p>   
                 </div> 
                 </article>
                 
            </div>
        </section>


        <section class="container testimonials__container mySwiper">
            <h2>Students' Testimonials</h2>
            <div class="swiper-wrapper">
                <article class="testimonial swiper-slide">
                    <div class="avatar">
                        <img src="./images/avatar1.jpg">
                    </div>
                    <div class="testimonial__info">
                        <h5>Stella</h5>
                        <small>Faculty</small>
                    </div>
                    <div class="testimonial__body">
                        <p>It is highly efficient and user-friendly. She commends its clear navigation and accessibility of course materials, 
                       noting it streamlines the learning process. Stella finds it a valuable tool for both students and instructors.</p>
                    </div>
                </article>

                <article class="testimonial swiper-slide">
                    <div class="avatar">
                        <img src="./images/avatar2.jpg">
                    </div>
                    <div class="testimonial__info">
                        <h5>James</h5>
                        <small>Faculty</small>
                    </div>
                    <div class="testimonial__body">
                        <p>the student course management website for its intuitive design and effective communication features. He highlights its role in simplifying course administration, grading, and interaction with students. 
                        I found it a valuable resource for enhancing the teaching experience.</p>
                    </div>
                </article>

                <article class="testimonial swiper-slide">
                    <div class="avatar">
                        <img src="./images/avatar3.jpg">
                    </div>
                    <div class="testimonial__info">
                        <h5>Shannu</h5>
                        <small>Student</small>
                    </div>
                    <div class="testimonial__body">
                        <p>They appreciate its user-friendly interface, efficient organization of course materials, and seamless communication with instructors. 
                        Some students suggest minor improvements, but overall, it enhances their online learning experience.</p>
                    </div>
                </article>

                <article class="testimonial swiper-slide">
                    <div class="avatar">
                        <img src="./images/avatar4.jpg">
                    </div>
                    <div class="testimonial__info">
                        <h5>Anju</h5>
                        <small>Student</small>
                    </div>
                    <div class="testimonial__body">
                        <p>Users appreciate its ease of navigation, centralized access to course materials, and communication tools with instructors. 
                        While some minor improvements are suggested, the website effectively streamlines course management and enhances the online learning experience.</p>
                    </div>
                </article>

                <article class="testimonial swiper-slide">
                    <div class="avatar">
                        <img src="./images/avatar5.jpg">
                    </div>
                    <div class="testimonial__info">
                        <h5>Yasmina</h5>
                        <small>Student</small>
                    </div>
                    <div class="testimonial__body">
                        <p>It typically offers features such as course registration, access to learning materials, assignment submission, grading, communication with instructors, and tracking academic progress, effectively streamlines course management, enhances online learning experience.</p>
                    </div>
                </article>

            </div>
            <div class="swiper-pagination"></div>
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