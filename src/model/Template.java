package model;

public class Template {
//        create table template (
//        id bigint AUTO_INCREMENT primary key,
//        authorid bigint not null ,
//        type varchar(30) not null,
//        filepath varchar(30) not null,
//        price double not null
//        )default charset = utf8;
    private int id = -1;
    private int authorid;
    private String type;
    private String filepath;
    private double price;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAuthorid() {
        return authorid;
    }

    public void setAuthorid(int authorid) {
        this.authorid = authorid;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
