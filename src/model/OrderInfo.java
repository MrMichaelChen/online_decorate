package model;

public class OrderInfo {
//        create table orderinfo(
//        id bigint not null ,
//        proid bigint not null ,
//        pronum bigint not null
//        )default charset = utf8;

    private int id=-1;
    private int orderid=-1;
    private int proid;
    private int pronum;

    public int getOrderid() {
        return orderid;
    }

    public void setOrderid(int orderid) {
        this.orderid = orderid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProid() {
        return proid;
    }

    public void setProid(int proid) {
        this.proid = proid;
    }

    public int getPronum() {
        return pronum;
    }

    public void setPronum(int pronum) {
        this.pronum = pronum;
    }
}
