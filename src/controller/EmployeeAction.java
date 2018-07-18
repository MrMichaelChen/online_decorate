package controller;

import com.opensymphony.xwork2.ActionSupport;
import model.Employee;

public class EmployeeAction extends ActionSupport {

    Employee employee;

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    @Override
    public String execute() throws Exception {
        return super.execute();
    }
}
