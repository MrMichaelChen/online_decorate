package controller;

import com.opensymphony.xwork2.ActionSupport;
import dao.TemplateInfoDao;
import model.Template;
import model.TemplateInfo;

import javax.swing.text.html.HTMLDocument;
import java.util.Iterator;

public class TemplateInfoAction extends ActionSupport {
    Template template;

    public TemplateInfo getTemplateInfo() {
        return templateInfo;
    }

    public void setTemplateInfo(TemplateInfo templateInfo) {
        this.templateInfo = templateInfo;
    }

    TemplateInfo templateInfo;
    public Template getTemplate() {
        return template;
    }

    public void setTemplate(Template template) {
        this.template = template;
    }

    TemplateInfoDao templateInfoDao = new TemplateInfoDao();

    Iterator templatedetailinfo;

    public Iterator getTemplatedetailinfo() {
        return templatedetailinfo;
    }

    public void setTemplatedetailinfo(Iterator templatedetailinfo) {
        this.templatedetailinfo = templatedetailinfo;
    }

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }
    public String looktemplate(){
        System.out.println(template.getId());
        templatedetailinfo = templateInfoDao.filter("temid", String.format("=%d", template.getId())).all();
        return SUCCESS;
    }
    public String addtemplateinfo(){
        //System.out.println(template.getId());
        templateInfo.setTemid(template.getId());
        templateInfo.setProid(templateInfo.getProid());
        templateInfo.setPronum(templateInfo.getPronum());
        templateInfoDao.add(templateInfo);
        return SUCCESS;
    }
}
