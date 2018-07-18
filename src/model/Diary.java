package model;

public class Diary {
//        create table diary(
//        id bigint auto_increment primary key ,
//        userid bigint not null ,
//        time datetime not null ,
//        title text not null ,
//        content longtext not null
//        )default charset = utf8;
    private int id=-1;
    private int userid;
    private String time;
    private String title;
    private String content;

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

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
