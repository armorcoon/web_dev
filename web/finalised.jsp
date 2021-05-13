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
            address name = (address) session.getAttribute("name");
            String fn = name.firstname;
            String ln = name.lastname;
            Context context = new InitialContext();
            DataSource dataSource = (DataSource) context.lookup("java:comp/env/" + "jdbc/myDataSource");
            DBase db = new DBase(dataSource);
            ArrayList<address> record = db.retriveShipping(fn, ln);
            for (int i = 0; i < record.size(); i++) {
        %>
        <div>Name:<%=record.get(i).getFirstname()%>  <%=record.get(i).getLastname()%></div>
        <div>Address:<%=record.get(i).getStreetname()%>, <%=record.get(i).getSuburb()%>, <%=record.get(i).getPostcode()%>, <%=record.get(i).getCountry()%></div>
        <div>Express delivery:<%=record.get(i).getExpress()%></div>         
        <%
            }%>
        <form method="POST" action='payment'>
            <button type='submit'>Payment</button></p>
        <form>
</html>
