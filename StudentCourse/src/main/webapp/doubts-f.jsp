<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
 <style>
 table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    background-color: #fff;
}
th {
    background-color:var(--color-bg2);
    color: #fff;
    padding: 10px;
}
td {
    border: 1px solid #ddd;
    padding: 10px;
}
tr:nth-child(even) {
    background-color: #f2f2f2;
}
td {
    color: #333; /* Change to an appropriate color */
}

/* Style links in the table (e.g., edit links) */
a {
    text-decoration: none;
    color: #007bff;
}
 </style>
</head>
<body>
<nav>
            <div class="container nav__container">
                <a href="index.jsp" ><h4>REACH</h4></a>
                <ul class="nav__menu">
                    <li><a href="client_home.jsp">HOME</a></li>
                    <li><a href="index.jsp">LOGOUT</a></li>
                </ul>
                <button id="open-menu-btn"> <i class="uil uil-bars"></i></button>
                <button id="close-menu-btn"><i class="uil uil-multiply"></i></button>
            </div>
        </nav>
        <br>
        <br>
        <br><br><br>
    <h1 style="text-align:center;">ASK DOUBTS</h1>
      <c:if test="${not empty successMessage}">
        <div class="alert alert-success">
            ${successMessage}
        </div>
    </c:if>
    
    <c:if test="${not empty errorMessagede}">
        <div class="alert alert-success">
            ${errorMessagede}
        </div>
    </c:if>
    <c:if test="${not empty successMessaged}">
        <div class="alert alert-success">
            ${successMessaged}
        </div>
    </c:if>
    <c:if test="${not empty successMessagede}">
        <div class="alert alert-success">
            ${successMessagede}
        </div>
    </c:if>
    <c:if test="${not empty errorMessage}">
        <div class="alert alert-success">
            ${errorMessage}
        </div>
    </c:if>
    <table  >
        <thead>
            <tr>
                <th>ID</th>
                
                <th>EMAIL</th>
                <th>Name</th>
               
                <th>PHONE</th>
                
                
                <th>MESSAGE</th>
                
                <!-- Add other table headers here -->
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${dataf}" var="faculty">
                <tr>
                    <td>${faculty.id}</td>
                    
                    <td>${faculty.email}</td>
                    <td>${faculty.name}</td>
                    
                    <td>${faculty.phn}</td>
                    
                    
                     <td>
    <a href="#" onclick="sendMessage(${faculty.id})">Message</a>
</td>

                    <!-- Add other table data cells here -->
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <script>
    function sendMessage(facultyId) {
        var message = prompt("Enter your message:");
        if (message) {
            // Call the API endpoint with AJAX to send the message
            $.ajax({
                type: "POST",
                url: "/sendMessage",
                data: {
                    facultyId: facultyId,
                    messageContent: message
                },
                success: function(response) {
                    alert(response);
                },
                error: function(xhr, status, error) {
                    alert("Failed to send the message");
                }
            });
        }
    }
</script>

    
</body>
</html>
