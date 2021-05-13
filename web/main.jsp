<%-- 
    Document   : main
    Created on : Apr 24, 2021, 4:45:08 PM
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
        <h1>What would you like to shop </h1>  
        <div style='float:left'>
            <form method="POST" action="shoes.jsp">
                <button type="submit">shoes</button>
            </form>
        </div>
        <div style="float: left; width:15cm">
            <form method="POST" action="clothing.jsp">
                <button type="submit">clothing</button>
            </form>  
        </div>
    </body>
</html>
