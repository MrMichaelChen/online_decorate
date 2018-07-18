package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.net.httpserver.Authenticator;
import dao.OrderInfoDao;
import dao.OrderListDao;
import dao.ProductDao;
import model.OrderInfo;
import model.OrderList;
import model.Product;
import model.Template;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

public class OrderListAction extends ActionSupport {
    Product product;
    OrderInfo orderInfo;
    Template template;

    public Template getTemplate() {
        return template;
    }

    public void setTemplate(Template template) {
        this.template = template;
    }

    public OrderInfo getOrderInfo() {
        return orderInfo;
    }

    public void setOrderInfo(OrderInfo orderInfo) {
        this.orderInfo = orderInfo;
    }
    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    OrderList orderList;

    public OrderListDao getOrderListDao() {
        return orderListDao;
    }

    public void setOrderListDao(OrderListDao orderListDao) {
        this.orderListDao = orderListDao;
    }

    OrderListDao orderListDao = new OrderListDao();
    OrderInfoDao orderInfoDao = new OrderInfoDao();
    public OrderList getOrderList() {
        return orderList;
    }

    public void setOrderList(OrderList orderList) {
        this.orderList = orderList;
    }

    @Override
    public String execute() throws Exception {
        return super.execute();
    }

    public String orderdel(){
        try{
            orderListDao.delete(orderList);
        }catch (Exception e){
            return "fail";
        }
        return SUCCESS;
    }



    public String order(int userid){
        OrderList orderList1 = new OrderList();
        orderList1.setUserid(userid);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String date = df.format(new Date());
        orderList1.setOrderdate(date);
        orderListDao.add(orderList1);
        return SUCCESS;
    }

    public String addorder(){
        Map session=ActionContext.getContext().getSession();
        int userid = (int) session.get("userid");
        int orderid = -1;
        try{
            orderList = (OrderList) orderListDao.filter("userid", String.format("=%d", userid)).first();
            orderid = orderList.getId();
        }catch (Exception e){
            orderid = 0 ;
        }
        if(orderid==0){
            order(userid);
        }
        System.out.println(orderid);
        OrderInfo orderInfo1 = new OrderInfo();
        orderInfo1.setOrderid(orderid);
        orderInfo1.setProid(product.getId());
        orderInfo1.setPronum(1);
        orderInfoDao.add(orderInfo1);


        System.out.println("11111");
        System.out.println(product.getId());

        ProductDao productDaobuffer = new ProductDao();
        Product productbuffer = new Product();
        productbuffer =(Product) productDaobuffer.filter("id", String.format("=%d", product.getId())).first();
        System.out.println(productbuffer.getRepertory());
        int buffer = productbuffer.getRepertory();
        productbuffer.setRepertory(buffer-1);
        productDaobuffer.add(productbuffer);
        return SUCCESS;
    }

    public String userdelpro(){
        orderInfoDao.delete(orderInfo);
        return SUCCESS;
    }

    public String userbuytem(){
        Map session=ActionContext.getContext().getSession();
        int userid = (int) session.get("userid");
        int orderid = -1;
        try{
            orderList = (OrderList) orderListDao.filter("userid", String.format("=%d", userid)).first();
            orderid = orderList.getId();
        }catch (Exception e){
            orderid = 0 ;
        }
        if(orderid==0){
            order(userid);
        }
        OrderInfo orderInfo1 = new OrderInfo();
        orderInfo1.setOrderid(orderid);
        orderInfo1.setProid(template.getId());
        orderInfo1.setPronum(-1);
        orderInfoDao.add(orderInfo1);
        return SUCCESS;
    }
}
