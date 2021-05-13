package product;

public class address {

    public String firstname;
    public String lastname;
    public String country;
    public String streetname;
    public String suburb;
    public String postcode;
    public String express;

    public address(String firstname, String lastname, String country, String streetname, String suburb, String postcode, String express) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.country = country;
        this.streetname = streetname;
        this.suburb = suburb;
        this.postcode = postcode;
        this.express = express;
    }

    public address(String firstname, String lastname) {
        this.firstname = firstname;
        this.lastname = lastname;
    }

    public String getFirstname() {
        return firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public String getStreetname() {
        return streetname;
    }

    public String getSuburb() {
        return suburb;
    }

    public String getPostcode() {
        return postcode;
    }

    public String getExpress() {
        return express;
    }
    public String getCountry(){
        return country;
    }

}
