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

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>shopping store</title>
    </head>
    <body>
        <h1>Shoes Store</h1>
        <table border="1">
            <tr>
                <td>ID</td>
                <td>brand</td>
                <td>price</td>       
            </tr>

            <%
                Context context = new InitialContext();
                DataSource dataSource = (DataSource) context.lookup("java:comp/env/" + "jdbc/myDataSource");
                DBase db = new DBase(dataSource);
                PrintWriter writer = new PrintWriter(out);
                ArrayList<Items> record = db.retriveClothing();
                for (int i = 0; i < record.size(); i++) {
                    writer.printf("<tr>");
                    writer.printf("<td>");
                    writer.printf(Integer.toString(i + 1));
                    writer.printf("</td>");
                    writer.printf("<td>");
                    writer.printf(record.get(i).getBrand());
                    writer.printf("</td>");
                    writer.printf("<td>");
                    writer.printf(record.get(i).getPrice().toString());
                    writer.printf("</td>");
                    writer.printf("</tr>");
                }

            %>
        </table><br><br><br>

        <form action="specific_order_view_clothing">
            <button type="submit">Jordan AJ11 - Men T-Shirts </button>
        </form>
        <form action="specific_order_view_clothing_1">          
            <button type="submit">Jordan Aj5 - Men Hoodies</button>
        </form>
        <form action="specific_order_view_clothing_2">          
            <button type="submit">Nike Air Gel - Men Pants </button>
        </form>
        <form action="specific_order_view_clothing_3">          
            <button type="submit">Nike Tech Fleece - Women Hoodies</button>
        </form>
        <form action='view'>
            <button type="submit">view orders</button>
        </form>
         <form action='main.jsp'>
            <button type="submit">BACK to MAIN SHOP</button>
        </form>
    </body>
</html>
