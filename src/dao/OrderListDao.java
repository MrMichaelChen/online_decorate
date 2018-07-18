package dao;

import daobase.Dao;
import model.OrderList;

public class OrderListDao extends Dao {
    protected static String table = "orderlist";
    protected static Class class_type = OrderList.class;
    public OrderListDao(){
        super(table,class_type);
    }
}
