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
        <p>The following items are:</p>
        <table border="1">
            <tr>
                <td><b>Product</b></td>
                <td><b>Size</b></td>
                <td><b>Quantity</b></td>
                <td><b>Price</b></td>
            </tr>
            <%
                ArrayList<Items> basket = (ArrayList) session.getAttribute("basket");
                Integer total = 0;
                Double total_cost = 0.00;
                for (Items product : basket) {
            %>
            <tr>
                <td><%=product.brand%></td>
                <td><%=product.size%></td>
                <td><%=product.qty%></td>
                <td>A$<%=product.price%></td>
            </tr>

            <%
                    total += Integer.parseInt(product.qty);
                    total_cost += Double.parseDouble(product.price) * (Integer.parseInt(product.qty));
                }
            %>
            <tr>
                <td><p>Total Amount</p></td>
                <td></td>
                <td><p><%=total%></p></td>
                <td><p>A$<%=total_cost%></p></td>
            </tr>
        </table>
           <form method="GET" action="determine_user.jsp">
                <button type="submit">Payment Process</button>
            </form>  
            
    </body>
</html>







