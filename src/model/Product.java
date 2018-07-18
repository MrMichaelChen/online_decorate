package model;

public class Product {
//    create table product (
//    id bigint AUTO_INCREMENT primary key,
//    name varchar(20) not null ,
//    price double not null ,
//    type varchar(30) not null,
//    repertory bigint not null,
//    vender varchar(30) not null
//    )default charset = utf8;
    private int id = -1;
    private String name;
    private double price;
    private String type;
    private int repertory;
    private String vender;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getRepertory() {
        return repertory;
    }

    public void setRepertory(int repertory) {
        this.repertory = repertory;
    }

    public String getVender() {
        return vender;
    }

    public void setVender(String vender) {
        this.vender = vender;
    }
}
