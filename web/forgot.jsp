<%-- 
    Document   : forgot
    Created on : Apr 22, 2021, 4:46:36 PM
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
        <h1>Reset your password</h1>
        <div>Enter your email address, the system will send the reset password email to reset your new password.</div>
        <form action="send_email.jsp" method="POST">
            <label for='email'>email address</label>
            <input type="email" name ="email" required>
        </form>
    </body>
</html>
