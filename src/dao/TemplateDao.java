package dao;

import daobase.Dao;
import model.Template;

public class TemplateDao extends Dao {
    protected static String table = "template";  // 数据库表名

    protected static Class class_type = Template.class; // 数据模型的class

    public TemplateDao(){
        super(table, class_type);
    }

    public static void main(String [] args){

    }
}
