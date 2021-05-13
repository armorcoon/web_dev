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
        <h1>Billing Address</h1>
        <form method ="POST">
            <label for='firstname'>First Name</label>
            <br><input type="text" name ="firstname" required>
            <br><label for="lastname">Last Name</label>
            <br><input type="text" name ="lastname" required>
            <br><label for="streetname">Street name</label>
            <br><input type="text" name="streetname" required>
            <br><label for="suburb">Suburb</label>
            <br><input type='text'name='suburb' required>
            <br><label for="postcode">Post Code</label>
            <br><input type='text'name='postcode' required> 
            <br><label for="country">Country</label>
            <br><select id = "country" name="country" required>
             <option value=""></option>
             <option value="Thailand">Thailand</option>
             <option value="Australia">Australia</option>
            </select>
            <br><input type="checkbox" name="express" value="on">
            <label for="express">Express delivery</label><br>
            <input type="checkbox" name="express" value="off">
            <label for="express">Standard delivery</label><br>
            <div>**the user can only choose one option whether express or standard delivery.**</div>

            <br><br><button type="insert">BUY NOW</button><br>
        </form>


    </body>

</html>