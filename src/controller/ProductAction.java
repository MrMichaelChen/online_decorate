package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.ProductDao;
import model.Product;

public class ProductAction extends ActionSupport {

    Product product;
    ProductDao productDao = new ProductDao();
    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public String execute() throws Exception {
        return super.execute();
    }

    public String addproduct(){
        try{
            productDao.add(product);
        }catch (Exception e){
            return "input";
        }
        return SUCCESS;
    }

    public String productdel(){
        try{
            productDao.delete(product);
        }catch (Exception e){
            return "input";
        }
        return SUCCESS;
    }

    public String updateproduct(){
        System.out.println(product.getId());
        productDao.add(product);
        return SUCCESS;
    }
}
