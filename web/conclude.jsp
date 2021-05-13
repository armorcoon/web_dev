<%-- 
    Document   : conclude
    Created on : May 2, 2021, 8:45:46 AM
    Author     : Welcome
--%>

<!DOCTYPE html>
<%@page import="product.Items"%>
<%@page import="java.util.ArrayList"%>
<%@page import="product.Items"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.DBase.DBase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.DBase.DBase"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.*"%>
<%@page import="product.Items"%>
<%@page import="product.address"%>
<%@page import="product.card"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controller.MainServlet"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>shopping store</title>
    </head>
    <body>
        <h1>ORDER SUMMARY</h1>
        <h3>Your orders have been successfully processing.</h3>
        <h3>Thank you for shopping with us, see you next time.</h3>

        <table border="1">
            <tr>
                <td><b>index</b></td>
                <td><b>product</b></td>
                <td><b>Size</b></td>
                <td><b>Quantity</b></td>
                <td><b>Price</b></td>
                <td><b>Order Status</b></td>
            </tr>
            <%
                ArrayList<Items> basket = (ArrayList) session.getAttribute("basket");
                Integer total = 0;
                Double total_cost = 0.00;
                for (Items product : basket) {
            %>
            <tr>
                <td><%=basket.indexOf(product) + 1%></td>
                <td><%=product.brand%></td>
                <td><%=product.size%></td>
                <td><%=product.qty%></td>
                <td>A$<%=product.price%></td>
                <td>completed</td>
            </tr>

            <%
                    total += Integer.parseInt(product.qty);
                    total_cost += Double.parseDouble(product.price) * (Integer.parseInt(product.qty));
                }
            %>
            <tr>
                <td></td>
                <td><p>Total Amount</p></td>
                <td></td>
                <td><p><%=total%></p></td>
                <td><p>A$<%=total_cost%></p></td>
                <td>completed</td>
            </tr>
        </table>   
                <br><div><b>PAYMENT</b></div>
            <%
                card card_object = (card) session.getAttribute("card_object");
            %>
            <div>Card Number: <%=card_object.cardnumber%></div>
            <div>Card Name: <%=card_object.cardname%></div><br>
            <div>SHIPPING ADDRESS</div>
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
        <div>NAME :<%=record.get(i).getFirstname()%>  <%=record.get(i).getLastname()%></div>
        <div>ADDRESS :<%=record.get(i).getStreetname()%>, <%=record.get(i).getSuburb()%>, <%=record.get(i).getPostcode()%>, <%=record.get(i).getCountry()%></div>
        <div>EXPRESS DELIVERY :<%=record.get(i).getExpress()%></div><br><br>       
        <%
            }%>


        <br><br>
    </body>
</html>
