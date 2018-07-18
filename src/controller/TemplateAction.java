package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import dao.TemplateDao;
import model.Template;

import java.util.Map;

public class TemplateAction extends ActionSupport {
    Template template;
    TemplateDao templateDao = new TemplateDao();
    public Template getTemplate() {
        return template;
    }

    public void setTemplate(Template template) {
        this.template = template;
    }

    @Override
    public String execute() throws Exception {
        return super.execute();
    }

    public String addtemplate(){
        try{
            Map session=ActionContext.getContext().getSession();
            int userid = (int) session.get("userid");
            template.setAuthorid(userid);
            templateDao.add(template);
        }catch (Exception e){
            return "input";
        }
        return SUCCESS;
    }

    public String templatedel(){
        try{
            templateDao.delete(template);
        }catch (Exception e){
            return "input";
        }
        return SUCCESS;
    }
}
