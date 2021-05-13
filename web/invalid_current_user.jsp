<%-- 
    Document   : determine_user
    Created on : May 2, 2021, 10:05:28 AM
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
        <h1>Invalid Input</h1>
        <div>You have not been updated your billing address to the system,</div>
        <div>or you have input invalid first name or last name.</div><br>
        <form method="POST" action='shipping'>
            <button type='submit'>register</button></p>
        </form>
        <form method="POST" action='current_user'>
            <button type='submit'>input again</button></p>
        </form>
    </body>
</html>
