package dao;

import daobase.Dao;
import model.TemplateInfo;

public class TemplateInfoDao extends Dao {
    protected static String table = "templateinfo";
    protected static Class class_type = TemplateInfo.class;
    public TemplateInfoDao(){
        super(table,class_type);
    }
    public static void main(){

    }
}
