package product;

public class card {

    public String cardnumber;
    public String cardname;
    public String cardexpired_month;
    public String cardexpired_year;
    public String cvc;

    public card(String cardnumber,String cardname,String cardexpired_month,String cardexpired_year,String cvc) {
        this.cardnumber = cardnumber;
        this.cardname = cardname;
        this.cardexpired_month = cardexpired_month;
        this.cardexpired_year = cardexpired_year;
    }
    public card(String cardnumber,String cardname){
        this.cardnumber = cardnumber;
        this.cardname = cardname;
    }


    public String getCardnumber() {
        return cardnumber;
    }

    public String getCarname() {
        return cardname;
    }

    public String getCardexpired_month() {
        return cardexpired_month;
    }

    public String getCardexpired_year() {
        return cardexpired_year;
    }

    public String getCvc() {
        return cvc;
    }

}
