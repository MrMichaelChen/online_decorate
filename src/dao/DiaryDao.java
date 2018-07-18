package dao;

import daobase.Dao;
import model.Diary;

public class DiaryDao extends Dao {
    protected static String table="diary";
    protected static Class class_type = Diary.class;
    public DiaryDao(){
        super(table,class_type);
    }
    public static void main(){

    }
}
