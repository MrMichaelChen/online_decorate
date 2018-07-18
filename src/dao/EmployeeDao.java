package dao;

import daobase.Dao;
import model.Employee;

public class EmployeeDao extends Dao {
    protected static String table = "employee";  // 数据库表名

    protected static Class class_type = Employee.class; // 数据模型的class

    public EmployeeDao(){
        super(table, class_type);
    }

    public static void main(String [] args) throws Exception{
        Employee employee = new Employee();
        //employee.setId(1);
        employee.setUserid(1);
        employee.setIssuper("true");
        employee.setWork("员工");
        employeeadd(employee);
    }

    public static void employeeadd(Employee employee){
        EmployeeDao employeedao = new EmployeeDao();
        employeedao.add(employee);
    }

    public static void employeedel(Employee employee){
        EmployeeDao employeedao = new EmployeeDao();
        employeedao.delete(employee);
    }
}
