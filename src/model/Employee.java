package model;

public class Employee {
//    create table employee (
//    id bigint primary key,
//    issuper varchar(10) not null ,
//    work varchar(20) not null ,
//    check (issuper in ('false' , 'ture'))
//    )default charset = utf8;
    private int id=-1;
    private int userid=-1;
    private String issuper;
    private String work;

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIssuper() {
        return issuper;
    }

    public void setIssuper(String issuper) {
        this.issuper = issuper;
    }

    public String getWork() {
        return work;
    }

    public void setWork(String work) {
        this.work = work;
    }
}
