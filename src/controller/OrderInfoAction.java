package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.net.httpserver.Authenticator;
import dao.OrderInfoDao;
import dao.OrderListDao;
import dao.ProductDao;
import dao.TemplateDao;
import model.OrderInfo;
import model.OrderList;
import model.Product;
import model.Template;

import java.util.Iterator;
import java.util.Map;

public class OrderInfoAction extends ActionSupport {
    OrderInfo orderInfo;
    OrderList orderList;
    Iterator orderinfolist;
    double totalprice;

    public double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(double totalprice) {
        this.totalprice = totalprice;
    }

    public Iterator getOrderinfolist() {
        return orderinfolist;
    }

    public void setOrderinfolist(Iterator orderinfolist) {
        this.orderinfolist = orderinfolist;
    }

    OrderInfoDao orderInfoDao = new OrderInfoDao();
    public OrderList getOrderList() {
        return orderList;
    }

    public void setOrderList(OrderList orderList) {
        this.orderList = orderList;
    }

    public OrderInfo getOrderInfo() {
        return orderInfo;
    }

    public void setOrderInfo(OrderInfo orderInfo) {
        this.orderInfo = orderInfo;
    }

    @Override
    public String execute() throws Exception {
        return super.execute();
    }

    public String lookorder(){
        Map session=ActionContext.getContext().getSession();
        try{
            session.put("orderid", orderList.getId());
            orderinfolist = orderInfoDao.filter("orderid", String.format("=%d", orderList.getId())).all();
            System.out.println(orderinfolist);
            totalprice = toprice();
        }catch (Exception e){
            System.out.println(session.get("orderid"));
            orderinfolist = orderInfoDao.filter("orderid", String.format("=%d", session.get("orderid"))).all();
            System.out.println(orderinfolist);
            totalprice = toprice();
        }
//        orderinfolist = orderInfoDao.filter("orderid", String.format("=%d", orderList.getId())).all();
//        System.out.println(orderinfolist);
//        totalprice = toprice();
        return SUCCESS;
    }

    public double toprice(){
        Iterator userprolist;
        try{
            userprolist = orderInfoDao.filter("orderid", String.format("=%d", orderList.getId())).all();
        }catch (Exception e){
            Map session=ActionContext.getContext().getSession();
            userprolist = orderInfoDao.filter("orderid", String.format("=%d", session.get("orderid"))).all();
        }

        double totalprice=0;
        TemplateDao templateDao =new TemplateDao();
        while(userprolist.hasNext()){
            OrderInfo str = (OrderInfo) userprolist.next();
            if(str.getPronum() == -1){
                Template template =(Template) templateDao.filter("id", String.format("=%d", str.getProid())).first();
                totalprice += template.getPrice();
            }
            else {
                Product product = (Product) new ProductDao().filter("id", String.format("=%d", str.getProid())).first();
                totalprice+= product.getPrice()*str.getPronum();
            }
        }
        return totalprice;
    }
}
