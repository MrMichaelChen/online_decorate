package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.DiaryDao;
import model.Diary;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

public class DiaryAction extends ActionSupport {
    Diary diary;
    DiaryDao diaryDao = new DiaryDao();
    public Diary getDiary() {
        return diary;
    }

    public void setDiary(Diary diary) {
        this.diary = diary;
    }

    @Override
    public String execute() throws Exception {
        Map session=ActionContext.getContext().getSession();
        int userid = (int) session.get("userid");
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String date = df.format(new Date());
        diary.setTime(date);
        diary.setUserid(userid);
        diary.setTitle("111");
        diaryDao.add(diary);
//        System.out.println(userid);
//        System.out.println(df);
//        System.out.println(diary.getContent());
        return super.execute();
    }

    public String diarydel(){
        try{
            diaryDao.delete(diary);
        }catch (Exception e){
            return "fail";
        }
        return SUCCESS;
    }

    public String lookdiary(){
        diary = (Diary) diaryDao.filter("id", String.format("=%d", diary.getId())).first();
        return SUCCESS;
    }

}
