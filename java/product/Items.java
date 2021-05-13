package product;

public class Items {

    public String type;
    public String brand;
    public String qty;
    public String price;
    public String size;

    public Items(String brand, String qty,String size, String price) {
        this.brand = brand;
        this.qty = qty;
        this.size = size;
        this.price = price;
    }

    public Items(String brand, String price) {
        this.brand = brand;
        this.price = price;
    }
    public Items(String brand,String qty,String size) {
        this.brand = brand;
        this.qty = qty;
        this.size = size;
    }

    public String getType() {
        return type;
    }

    public String getBrand() {
        return brand;
    }

    public String getQTY() {
        return qty;
    }

    public String getPrice() {
        return price;
    }

    public String getSize() {
        return size;
    }

}
