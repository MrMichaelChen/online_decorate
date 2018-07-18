package dao;

import daobase.Dao;
import model.OrderInfo;

public class OrderInfoDao extends Dao {
    protected static String table="orderinfo";
    protected static Class class_type = OrderInfo.class;
    public OrderInfoDao(){
        super(table,class_type);
    }
    public static void main(){

    }
}
