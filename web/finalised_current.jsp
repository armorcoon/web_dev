<%-- 
    Document   : shoes
    Created on : Apr 24, 2021, 4:51:16 PM
    Author     : Welcome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.DBase.DBase"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.*"%>
<%@page import="product.Items"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controller.MainServlet"%>
<%@page import="product.address"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>shopping store</title>
    </head>
    <body>
        <h1>Shipping Address</h1>
        <h3>Your shipping address is displayed below.</h3>
        <%
            ArrayList<address> user_address = (ArrayList)session.getAttribute("user_address");
        %>
        <div>Name:<%=user_address.get(0).getFirstname()%>  <%=user_address.get(0).getLastname()%></div>
        <div>Address:<%=user_address.get(0).getStreetname()%>, <%=user_address.get(0).getSuburb()%>, <%=user_address.get(0).getPostcode()%>, <%=user_address.get(0).getCountry()%></div>
        <div>Express delivery:<%=user_address.get(0).getExpress()%></div>         
        <form method="POST" action='payment_current'>
            <button type='submit'>Payment</button></p>
        <form>
</html>
