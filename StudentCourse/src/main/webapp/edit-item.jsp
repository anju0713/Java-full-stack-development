<!-- edit-client.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Client</title>
</head>
<body>
    <h1>Edit Client</h1>
   <form action="/edit/${client.id}" method="post">

        <!-- Add form fields for editing client properties, e.g., name, email, etc. -->
        Name:<input type="text" name="name" value="${client.name}"><br>
        DOB:<input type="date" name="dob" value="${client.dob}"><br>
        Email:<input type="text" name="email" value="${client.email}"><br>
        Password:<input type="text" name="password" value="${client.password}"><br>
        Phn:<input type="number" name="phn" value="${client.phn}"><br>
        Username:<input type="text" name="username" value="${client.username}"><br>
        <!-- Add other input fields here for other properties -->
        <input type="submit" value="Save">
    </form>
    
    
</body>
</html>
