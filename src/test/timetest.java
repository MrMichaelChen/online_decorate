package test;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class timetest {
    public static void main(String [] args){
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String date = df.format(new Date());
        System.out.println(date);
    }
}
