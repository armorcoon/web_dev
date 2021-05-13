package model.DBase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;
import java.util.*;
import product.Items;
import product.address;

public class DBase {

    private DataSource dataSource;

    public DBase(DataSource ds) {
        this.dataSource = ds;
    }

    public void register(String id, String firstname, String lastname, String phone) {
        PreparedStatement pStatement = null;
        try {
            Connection connection = dataSource.getConnection();
            pStatement = connection.prepareStatement("insert into USER_CONTACT(USERNAME,FIRST_NAME,LAST_NAME,PHONE) values(?,?,?,?)");
            pStatement.setString(1, id);
            pStatement.setString(2, firstname);
            pStatement.setString(3, lastname);
            pStatement.setString(4, phone);
            pStatement.executeUpdate();
            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void registerAccount(String id, String password) {
        PreparedStatement pStatement = null;
        try {
            Connection connection = dataSource.getConnection();
            pStatement = connection.prepareStatement("insert into USERS(ID,PASSWORD) values(?,?)");
            pStatement.setString(1, id);
            pStatement.setString(2, password);
            pStatement.executeUpdate();
            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void registerShippingAddress(String fn, String ln, String country, String street, String suburb, String postcode, String express) {
        PreparedStatement pStatement = null;
        try {
            Connection connection = dataSource.getConnection();
            pStatement = connection.prepareStatement("insert into SHIPPING_ADDRESS(FIRSTNAME,LASTNAME,COUNTRY,STREETNAME,SUBURB,POSTCODE,EXPRESS) values(?,?,?,?,?,?,?)");
            pStatement.setString(1, fn);
            pStatement.setString(2, ln);
            pStatement.setString(3, country);
            pStatement.setString(4, street);
            pStatement.setString(5, suburb);
            pStatement.setString(6, postcode);
            pStatement.setString(7, express);
            pStatement.executeUpdate();
            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void registerPayment(String cardnumber, String cardname, String expired_month, String expired_year, String cvc) {
        PreparedStatement pStatement = null;
        try {
            Connection connection = dataSource.getConnection();
            pStatement = connection.prepareStatement("insert into PAYMENT(CARDNUMBER,CARDNAME,CARDEXPIRED_MONTH,CARDEXPIRED_YEAR,CVC) values(?,?,?,?,?)");
            pStatement.setString(1, cardnumber);
            pStatement.setString(2, cardname);
            pStatement.setString(3, expired_month);
            pStatement.setString(4, expired_year);
            pStatement.setString(5, cvc);
            pStatement.executeUpdate();
            connection.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public Boolean authenticate(String id, String password) {
        boolean matched = false;
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(
                    "select * from USERS where "
                    + "CAST(ID as varchar(128))='" + id + "' and "
                    + "CAST(PASSWORD as varchar(128))='" + password
                    + "'");
            ResultSet resultSet = pStatement.executeQuery();
            while (resultSet.next()) {
                matched = true;
            }
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return matched;
    }

    public ArrayList retriveShoes() {
        ArrayList<Items> record = new ArrayList<Items>();
        try {

            Connection connection = dataSource.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(
                    "SELECT * FROM SHOES");
            ResultSet resultSet = pStatement.executeQuery();
            while (resultSet.next()) {
                String brand = resultSet.getString("BRAND");
                String price = resultSet.getString("PRICE");
                Items shoes = new Items(brand, price);
                record.add(shoes);
            }
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return record;
    }

    public ArrayList retriveClothing() {
        ArrayList<Items> record = new ArrayList<Items>();
        try {

            Connection connection = dataSource.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(
                    "SELECT * FROM CLOTHING");
            ResultSet resultSet = pStatement.executeQuery();
            while (resultSet.next()) {
                String brand = resultSet.getString("BRAND");
                String price = resultSet.getString("PRICE");
                Items shoes = new Items(brand, price);
                record.add(shoes);
            }
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return record;
    }

    public String retrivePrice(String brand) {
        String price = "";
        try {

            Connection connection = dataSource.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(
                    "SELECT * FROM SHOES");
            ResultSet resultSet = pStatement.executeQuery();
            while (resultSet.next()) {
                String prod = resultSet.getString("BRAND");
                if (brand == prod) {
                    price = resultSet.getString("PRICE");
                }
            }
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return price;
    }

    public ArrayList retriveShipping(String fn, String ln) {
        ArrayList<address> specific_record = new ArrayList<address>();
        try {

            Connection connection = dataSource.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(
                    "select * from SHIPPING_ADDRESS where "
                    + "CAST(FIRSTNAME as varchar(100))='" + fn + "' and "
                    + "CAST(LASTNAME as varchar(100))='" + ln
                    + "'");
            ResultSet resultSet = pStatement.executeQuery();
            while (resultSet.next()) {
                String firstname = resultSet.getString("FIRSTNAME");
                String lastname = resultSet.getString("LASTNAME");
                String country = resultSet.getString("COUNTRY");
                String streetname = resultSet.getString("STREETNAME");
                String suburb = resultSet.getString("SUBURB");
                String postcode = resultSet.getString("POSTCODE");
                String express = resultSet.getString("EXPRESS");

                address item = new address(firstname, lastname, country, streetname, suburb, postcode, express);
                specific_record.add(item);
            }
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return specific_record;
    }

    //check the fn and ln in database 
    public Boolean checkUser_contact(String fn, String ln) {
        boolean matched = false;
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(
                    "select * from SHIPPING_ADDRESS where "
                    + "CAST(FIRSTNAME as varchar(100))='" + fn + "' and "
                    + "CAST(LASTNAME as varchar(100))='" + ln
                    + "'");
            ResultSet resultSet = pStatement.executeQuery();
            while (resultSet.next()) {
                matched = true;
            }
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return matched;

    }

    public String retriveCardnumber(String holdername) {
        String cardnumber = "";
        try {

            Connection connection = dataSource.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(
                    "select * from PAYMENT where "
                    + "CAST(CARDNAME as varchar(100))='" + holdername + "'");
            ResultSet resultSet = pStatement.executeQuery();
            while (resultSet.next()) {
                cardnumber = resultSet.getString("CARDNUMBER");
            }
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(DBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cardnumber;
    }

}
