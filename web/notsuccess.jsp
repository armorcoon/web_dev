<%-- 
    Document   : notsuccess
    Created on : Apr 25, 2021, 10:16:04 PM
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
        <h2>Sign-in is blocked</h2>
        <h3>Sign-in to this account is blocked for one of these reasons </h3>
        <div>entered the wrong password or username</div>
        <div>If you signed up for this account, you can choose these below choices</div><br>
        <div>
            <div style='float:left'>
                <form method='POST' action='register'>
                    <button type="submit">register</button>
                </form>
            </div>
            <div style="float: left; width:15cm">
                <form method="POST" action="forgot.jsp">
                    <button type="submit">forgot password</button>
                </form>
            </div>
        </div>
    </body>
</html>


</body>
</html>
