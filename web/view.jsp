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
<%@page import="java.util.ArrayList"%>
<%@page import="Controller.MainServlet"%>
<html>
    <head>
        <title>shopping store</title>
    </head>
    <body>                                                                                                  
            <table border="1">
                <tr>
                    <td><b>index</b></td>
                    <td><b>product</b></td>
                    <td><b>Quantity</b></td>
                    <td><b>Size</b></td>
                    <td><b>Price</b></td>
                    <td><b>Status</b></td>
                </tr>
                <% 
                    ArrayList<Items> basket = (ArrayList) session.getAttribute("basket");
                    for (Items item:basket) {
                %>
                <tr>
                    <td><%=basket.indexOf(item)+1%></td>
                    <td><%=item.brand%></td>
                    <td><%=item.qty%></td>
                    <td><%=item.size%></td> 
                    <td>A$<%=item.price%></td> 
                <%
                    }
                %>
                </tr> 
            </table>
            <br><br>
        <form action="shoes.jsp" method="POST">
            <button type="submit">Continue Shopping</button>
        </form>
        <form action="checkout.jsp">
            <button type="submit">Check out</button> 
        </form>
    </body>
</html>

