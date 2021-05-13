<%-- 
    Document   : send_email
    Created on : Apr 24, 2021, 10:08:20 AM
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
        <h1>
            Reset your new password
        </h1>
        <div>
            We just sent a reset password email to <%=request.getParameter("email")%>. Please check your email to reset your password.
        </div>
    </body>
</html>
