package dao;

import daobase.Dao;
import model.Product;

public class ProductDao extends Dao {
    protected static String table = "product";  // 数据库表名

    protected static Class class_type = Product.class; // 数据模型的class

    public ProductDao(){
        super(table, class_type);
    }

    public static void main(String [] args) throws Exception{
        Product pre = new Product();
//        pre.setId(1);
        pre.setName("灯具");
        pre.setPrice(123);
        pre.setRepertory(34);
        pre.setType("sdf");
        pre.setVender("sdafs");
        new ProductDao().add(pre);
    }
}
