package model;

public class User {

    //    id bigint AUTO_INCREMENT primary key,
    //    name varchar(20) not null ,
    //    address varchar(20) not null ,
    //    phone varchar(20) not null,
    //    password varchar(20) not null,
    //    role varchar(10) not null,
    //    check (role in ('admin' , 'user', 'employee'))
    private int id = -1;
    private String name;
    private String address;
    private String phone;
    private String password;
    private String role = "user";

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
