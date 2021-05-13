<%-- 
    Document   : register
    Created on : Apr 22, 2021, 4:45:45 PM
    Author     : Welcome
--%>
<%@page import="model.DBase.DBase"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>shopping store</title>
    </head>
    <body>
        <h1>Register</h1>
        <form method ="POST">
            <label for='id'>username</label>
            <br><input type="text" name ="id" required>
            <br><label for="password">password</label>
            <br><input type="password" name ="password" required>
            <br><label for="firstname">fist name</label>
            <br><input type="text" name ="firstname" required>
            <br><label for="lastname">last name</label>
            <br><input type="text" name="lastname" required>
            <br><label for="phone">phone number</label>
            <br><input type='text'name='phone' required>
            <br><br><button type="insert">SIGN IN</button><br>
        </form>
    </body>
</html>