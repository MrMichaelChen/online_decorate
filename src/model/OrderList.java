package model;

public class OrderList {
//        create table orderlist(
//        id bigint auto_increment primary key ,
//        userid bigint not null ,
//        orderdate datetime
//        )default charset = utf8;
    private int id=-1;
    private int userid;
    private String orderdate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getOrderdate() {
        return orderdate;
    }

    public void setOrderdate(String orderdate) {
        this.orderdate = orderdate;
    }
}
