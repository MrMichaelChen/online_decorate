package controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import dao.*;
import model.*;

import java.awt.*;
import java.util.Iterator;
import java.util.Map;

public class UserAction extends ActionSupport {
    User user;
    UserDao userDao = new UserDao();

    Iterator productlist;
    Iterator templatelist;
    Iterator orderlist;
    Iterator diarylist;
    Product product;
    Template template;
    OrderList orderList;
    Diary diary;

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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    public String checkuser(){
        String selectname = String.format("='%s'", user.getName());
        User userbuffer = (User) userDao.filter("name",selectname).first();
        try{
            ProductDao productDao1 = new ProductDao();
            Iterator prolist = productDao1.filter("id", ">0").all();
            int pronumber = 0;
            while(prolist.hasNext()){
                Product str = (Product) prolist.next();
                if(str.getId()>0){
                    pronumber++;
                }
                else {
                    break;
                }

            }

            if(userbuffer.getPassword().equals(user.getPassword())){
                Map session=ActionContext.getContext().getSession();
                session.put("userid", userbuffer.getId());
                session.put("role", userbuffer.getRole());
                session.put("number", pronumber);
                return SUCCESS;
            }
            else {
                return "input";
            }
        }catch (Exception e){
            return ERROR;
        }

    }

    public String userreg(){
        try{
            userDao.add(user);
        }catch (Exception e) {
            return "fail";
        }
        return SUCCESS;
    }

    public String useradd(){
        try{
            User user1 = new User();
            user1 = (User) userDao.filter("name",user.getName()).first();
            user.setId(user.getId());
            user.setRole("user");
        }catch (Exception e) {
            return "fail";
        }
        userDao.add(user);
        return SUCCESS;
    }

    public String userdel(){
        try{
            userDao.delete(user);
        }catch (Exception e) {
            return "fail";
        }
        return SUCCESS;
    }

    public String updateuser(){
        System.out.println(user.getId());
        userDao.add(user);
        return SUCCESS;
    }

    public String usershow() throws Exception {
        Map session=ActionContext.getContext().getSession();
        int userid = (int) session.get("userid");
        String str = String.format("=%d", userid);
        System.out.println(str);
        DiaryDao diaryDao = new DiaryDao();
        diarylist = diaryDao.filter("userid",str).all();
        OrderListDao orderListDao = new OrderListDao();
        orderlist = orderListDao.filter("userid",str).all();
        ProductDao productDao = new ProductDao();
        productlist = productDao.filter("id",">0").all();
        TemplateDao templateDao = new TemplateDao();
        templatelist = templateDao.filter("id",">0").all();

        return SUCCESS;
    }

}
