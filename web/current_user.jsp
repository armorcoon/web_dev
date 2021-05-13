<%-- 
    Document   : current_user
    Created on : May 2, 2021, 10:10:11 AM
    Author     : Welcome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>shopping store</title>
    </head>
    <body>
        <h1>Please input below required information</h1>
        <form method ="POST">
            <label for='firstname'>First Name</label>
            <br><input type="text" name ="firstname" required>
            <br><label for="lastname">Last Name</label>
            <br><input type="text" name ="lastname" required>
            <br><br><button type="insert">Find</button><br>
        </form>
    </body>
</html>
