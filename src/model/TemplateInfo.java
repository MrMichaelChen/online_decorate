package model;

public class TemplateInfo {
//        create table templateinfo(
//        id bigint primary key ,
//        proid bigint not null ,
//        pronum bigint not null
    //        )default charset = utf8;
    private int id=-1;
    private int temid=-1;
    private int proid;
    private int pronum;

    public int getId() {
        return id;
    }
    public int getTemid() {
        return temid;
    }

    public void setTemid(int temid) {
        this.temid = temid;
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
