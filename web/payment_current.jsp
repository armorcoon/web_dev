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
        <h1>Select your payment method</h1>       
        <form method ="POST">
            <label for='cardnumber'>Card Number</label>
            <input type="text" name ="cardnumber" required>
            <br><br><label for="holdername">Card Holder Name</label>
            <input type="text" name ="holdername" required>
            <br><br><label for="expirymonth">Card Expiry Date</label>
            <select id = "expirymonth" name="expirymonth" required>
                <option value=""></option>
                <option value="01">01</option>
                <option value="02">02</option>
                <option value="03">03</option>
                <option value="04">04</option>
                <option value="05">05</option>
                <option value="06">06</option>
                <option value="07">07</option>
                <option value="08">08</option>
                <option value="09">09</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
            </select>
            <label for="expiryyear"></label>
            <select id = "expiryyear" name="expiryyear" required>
                <option value=""></option>
                <option value="2021">2021</option>
                <option value="2022">2022</option>
                <option value="2023">2023</option>
                <option value="2024">2024</option>
                <option value="2025">2025</option>
                <option value="2026">2026</option>
                <option value="2027">2027</option>
                <option value="2028">2028</option>
                <option value="2029">2029</option>
                <option value="2030">2030</option>
                <option value="2031">2031</option>
                <option value="2032">2032</option>
            </select>     
            <br><br><labl for="cvc">CVC/CVV/CID</label>
                <input type="text" name="cvc" required>
            <br><br><button type="insert">Pay</button><br>
        </form>
    </body>
</html>