<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="model.DBase.DBase"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%
//    String id = request.getParameter("id");
//    String password = request.getParameter("password");
//    if (id == null || password == null) {
%>
<!DOCTYPE html>
<html>
    <head>
        <title>shopping store</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>   
            <form method ="POST">
                <label for='id'>username</label>
                <input type="text" name ="id" required><br><br>
                <label for="password">password</label>
                <input type="password" name ="password" required=""><br>
                <br>&nbsp;<input type="submit" value="login">
                <input type="reset" value="reset">
            </form>
    </body>
</html>

