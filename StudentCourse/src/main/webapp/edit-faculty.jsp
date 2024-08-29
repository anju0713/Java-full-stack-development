<!-- edit-client.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Client</title>
</head>
<body>
    <h1>Edit Faculty</h1>
    <form action="/editf/${faculty.id}" method="post">
        <!-- Add form fields for editing client properties, e.g., name, email, etc. -->
        Name:<input type="text" name="name" value="${faculty.name}"><br>
        DOB:<input type="date" name="dob" value="${faculty.dob}"><br>
        Email:<input type="text" name="email" value="${faculty.email}"><br>
        Password:<input type="text" name="password" value="${faculty.password}"><br>
        Phn:<input type="text" name="phn" value="${faculty.phn}"><br>
        Username:<input type="text" name="username" value="${faculty.username}"><br>
        <!-- Add other input fields here for other properties -->
        <input type="submit" value="Save">
    </form>
</body>
</html>
