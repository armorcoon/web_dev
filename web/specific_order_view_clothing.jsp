<%-- 
    Document   : specific_order_view_1
    Created on : Apr 25, 2021, 2:34:50 PM
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
        <h2>Ordering : Jordan AJ11 - Men T-Shirts</h2>
        <form action ="specific_order_view">
            <input type="hidden" name="prod" value="Jordan AJ11 - Men T-Shirts">
            <input type="hidden" name="price" value="40.00">
            <br>
            <table>
                <td>
                    <label for="qty">quantity:</label>
                    <select id = 'qty' name="qty" required>
                        <option value=""></option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option> 
                    </select>
                </td>
                <td>
                    <label for="size">size:</label>
                    <select id = 'size' name="size" required>
                        <option value=""></option>
                        <option value="7US">S</option>
                        <option value="8US">M</option>
                        <option value="9US">L</option>
                        <option value="10US">XL</option>
                        <option value="10.5US">XXL</option> 
                    </select>
                </td>
            </table>
            <button type="submit">ADD TO CART</button>
        </form>
        <form action="shoes">
            <button type="submit">BACK TO SHOP</button>
        </form>
        <form action="view">
            <button type="submit">VIEW CART</button>
        </form>
    </body>
</html>
