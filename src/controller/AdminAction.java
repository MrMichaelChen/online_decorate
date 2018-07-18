package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.*;
import daobase.Dao;
import model.*;

import java.util.Iterator;

public class AdminAction extends ActionSupport {
    Iterator userlist;
    Iterator productlist;
    Iterator templatelist;
    Iterator orderlist;
    Iterator diarylist;
    User user;
    Product product;
    Template template;
    OrderList orderList;
    Diary diary;


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Template getTemplate() {
        return template;
    }

    public void setTemplate(Template template) {
        this.template = template;
    }

    public OrderList getOrderList() {
        return orderList;
    }

    public void setOrderList(OrderList orderList) {
        this.orderList = orderList;
    }

    public Diary getDiary() {
        return diary;
    }

    public void setDiary(Diary diary) {
        this.diary = diary;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    Employee employee;

    public Iterator getUserlist() {
        return userlist;
    }

    public void setUserlist(Iterator userlist) {
        this.userlist = userlist;
    }

    public Iterator getProductlist() {
        return productlist;
    }

    public void setProductlist(Iterator productlist) {
        this.productlist = productlist;
    }

    public Iterator getTemplatelist() {
        return templatelist;
    }

    public void setTemplatelist(Iterator templatelist) {
        this.templatelist = templatelist;
    }

    public Iterator getOrderlist() {
        return orderlist;
    }

    public void setOrderlist(Iterator orderlist) {
        this.orderlist = orderlist;
    }

    public Iterator getDiarylist() {
        return diarylist;
    }

    public void setDiarylist(Iterator diarylist) {
        this.diarylist = diarylist;
    }

    @Override
    public String execute() throws Exception {
        UserDao userDao = new UserDao();
        userlist = userDao.filter("id", ">0").all();
        DiaryDao diaryDao = new DiaryDao();
        diarylist = diaryDao.filter("id",">0").all();
        OrderListDao orderListDao = new OrderListDao();
        orderlist = orderListDao.filter("id",">0").all();
        ProductDao productDao = new ProductDao();
        productlist = productDao.filter("id",">0").all();
        TemplateDao templateDao = new TemplateDao();
        templatelist = templateDao.filter("id",">0").all();

        return SUCCESS;
    }
}
