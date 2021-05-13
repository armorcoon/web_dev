/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.DBase.DBase;
import product.Items;
import product.address;
import product.card;
import javax.naming.NamingException;
import javax.naming.InitialContext;
import javax.naming.Context;
import javax.sql.DataSource;

@WebServlet(name = "/NewServlet", urlPatterns = {"/login","/invalid_current_user", "/main", "/shoes", "/register", "/finalised", "/finalised_current", "/current_user", "/clothing", "/view", "/shipping", "/payment", "/payment_current", "/conclude", "/conclude_current", "/specific_order_view", "/specific_order_view_1", "/specific_order_view_2", "/specific_order_view_3", "/specific_order_view_clothing", "/specific_order_view_clothing_1", "/specific_order_view_clothing_2", "/specific_order_view_clothing_3"})
public class MainServlet extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Context context = null;
        try {
            context = new InitialContext();

        } catch (NamingException ex) {
            Logger.getLogger(MainServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        try {
            DataSource dataSource = (DataSource) context.lookup("java:comp/env/" + "jdbc/myDataSource");
            DBase db = new DBase(dataSource);

            String uri = request.getRequestURI();
            String nextpage = uri.substring(uri.lastIndexOf("/")) + ".jsp";
            HttpSession session = request.getSession();

            if (nextpage.equals("/login.jsp")) {
                String id = request.getParameter("id");
                String password = request.getParameter("password");
                if (id != null && password != null) {
                    if (db.authenticate(id, password)) {
                        nextpage = "success.jsp";
                    } else {
                        nextpage = "notsuccess.jsp";
                    }
                }
            }
            if (nextpage.equals("/register.jsp")) {

                String id = request.getParameter("id");
                String password = request.getParameter("password");
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String phone = request.getParameter("phone");

                if ((id != null) && (password != null) && (firstname != null) && (lastname != null) && (phone != null)) {
                    db.registerAccount(id, password);
                    db.register(id, firstname, lastname, phone);
                    nextpage = "register_update.jsp";
                }
            }
            ArrayList<Items> basket = (ArrayList) session.getAttribute("basket");
            if (basket == null) {
                basket = new ArrayList<>(10);
            }
            if (nextpage.equals("/specific_order_view.jsp")) {
                String prod = request.getParameter("prod");
                String qty = request.getParameter("qty");
                String size = request.getParameter("size");
                String price = request.getParameter("price");
                if ((prod != null) && (size != null) && (qty != null) && (price != null)) {
                    Items shoes = new Items(prod, qty, size, price);
                    basket.add(shoes);
                }
            }
            if (nextpage.equals("/specific_order_view_1.jsp")) {
                String prod = request.getParameter("prod");
                String qty = request.getParameter("qty");
                String size = request.getParameter("size");
                String price = request.getParameter("price");
                if ((prod != null) && (size != null) && (qty != null) && (price != null)) {
                    Items shoes = new Items(prod, qty, size, price);
                    basket.add(shoes);
                }
            }
            if (nextpage.equals("/specific_order_view_2.jsp")) {
                String prod = request.getParameter("prod");
                String qty = request.getParameter("qty");
                String size = request.getParameter("size");
                String price = request.getParameter("price");
                if ((prod != null) && (size != null) && (qty != null) && (price != null)) {
                    Items shoes = new Items(prod, qty, size, price);
                    basket.add(shoes);
                }
            }
            if (nextpage.equals("/specific_order_view_3.jsp")) {
                String prod = request.getParameter("prod");
                String qty = request.getParameter("qty");
                String size = request.getParameter("size");
                String price = request.getParameter("price");
                if ((prod != null) && (size != null) && (qty != null) && (price != null)) {
                    Items shoes = new Items(prod, qty, size, price);
                    basket.add(shoes);
                }
            }
            if (nextpage.equals("/specific_order_view_clothing.jsp")) {
                String prod = request.getParameter("prod");
                String qty = request.getParameter("qty");
                String size = request.getParameter("size");
                String price = request.getParameter("price");
                if ((prod != null) && (size != null) && (qty != null) && (price != null)) {
                    Items shoes = new Items(prod, qty, size, price);
                    basket.add(shoes);
                }
            }
            if (nextpage.equals("/specific_order_view_clothing_1.jsp")) {
                String prod = request.getParameter("prod");
                String qty = request.getParameter("qty");
                String size = request.getParameter("size");
                String price = request.getParameter("price");
                if ((prod != null) && (size != null) && (qty != null) && (price != null)) {
                    Items shoes = new Items(prod, qty, size, price);
                    basket.add(shoes);
                }
            }
            if (nextpage.equals("/specific_order_view_clothing_2.jsp")) {
                String prod = request.getParameter("prod");
                String qty = request.getParameter("qty");
                String size = request.getParameter("size");
                String price = request.getParameter("price");
                if ((prod != null) && (size != null) && (qty != null) && (price != null)) {
                    Items shoes = new Items(prod, qty, size, price);
                    basket.add(shoes);
                }
            }
            if (nextpage.equals("/specific_order_view_clothing_3.jsp")) {
                String prod = request.getParameter("prod");
                String qty = request.getParameter("qty");
                String size = request.getParameter("size");
                String price = request.getParameter("price");
                if ((prod != null) && (size != null) && (qty != null) && (price != null)) {
                    Items shoes = new Items(prod, qty, size, price);
                    basket.add(shoes);
                }
            }
            if (nextpage.equals("/shipping.jsp")) {
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String country = request.getParameter("country");
                String streetname = request.getParameter("streetname");
                String suburb = request.getParameter("suburb");
                String postcode = request.getParameter("postcode");
                String express = request.getParameter("express");
                if ((firstname != null) && (lastname != null) && (country != null) && (streetname != null) && (suburb != null) && (postcode != null) && (express != null)) {
                    db.registerShippingAddress(firstname, lastname, country, streetname, suburb, postcode, express);
                    address name = new address(firstname, lastname);
                    nextpage = "finalised";
                    session.setAttribute("name", name);
                    RequestDispatcher rd = request.getRequestDispatcher(nextpage);
                    rd.forward(request, response);
                }
            }
            if (nextpage.equals("/current_user.jsp")) {
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                if ((firstname != null) && (lastname != null)) {
                    if (db.checkUser_contact(firstname, lastname) == true) {
                        ArrayList<address> user_address = db.retriveShipping(firstname, lastname);
                        nextpage = "finalised_current"; 
                        session.setAttribute("user_address", user_address);
                        RequestDispatcher rd = request.getRequestDispatcher(nextpage);
                        rd.forward(request, response);
                    }
                    if (db.checkUser_contact(firstname, lastname) == false) {
                            nextpage = "invalid_current_user";
                        }        
                }
            }
            if (nextpage.equals("/payment.jsp")) {
                String cardnumber = request.getParameter("cardnumber");
                String cardname = request.getParameter("holdername");
                String expirymonth = request.getParameter("expirymonth");
                String expiryyear = request.getParameter("expiryyear");
                String cvc = request.getParameter("cvc");
                if ((cardnumber != null) && (cardname != null) && (expirymonth != null) && (expiryyear != null) && (cvc != null)) {
                    db.registerPayment(cardnumber, cardname, expirymonth, expiryyear, cvc);
                    card card_object = new card(cardnumber, cardname);
                    nextpage = "conclude";
                    session.setAttribute("card_object", card_object);
                    RequestDispatcher rd = request.getRequestDispatcher(nextpage);
                    rd.forward(request, response);
                }
            }
            if (nextpage.equals("/payment_current.jsp")) {
                String cardnumber = request.getParameter("cardnumber");
                String cardname = request.getParameter("holdername");
                String expirymonth = request.getParameter("expirymonth");
                String expiryyear = request.getParameter("expiryyear");
                String cvc = request.getParameter("cvc");
                if ((cardnumber != null) && (cardname != null) && (expirymonth != null) && (expiryyear != null) && (cvc != null)) {
                    db.registerPayment(cardnumber, cardname, expirymonth, expiryyear, cvc);
                    card card_object = new card(cardnumber, cardname);
                    nextpage = "conclude_current";
                    session.setAttribute("card_object", card_object);
                    RequestDispatcher rd = request.getRequestDispatcher(nextpage);
                    rd.forward(request, response);
                }
            }
            session.setAttribute("basket", basket);
            RequestDispatcher rd = request.getRequestDispatcher(nextpage);
            rd.forward(request, response);
        } catch (NamingException ex) {
            Logger.getLogger(MainServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
