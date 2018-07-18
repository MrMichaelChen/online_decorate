package dao;

import daobase.Dao;
import model.User;

public class UserDao extends Dao {

    protected static String table = "user";  // 数据库表名

    protected static Class class_type = User.class; // 数据模型的class

    public UserDao(){
        super(table, class_type);
    }

    public static void main(String [] args) throws Exception {
        UserDao dao = new UserDao();
        User user2 = (User)dao.filter("name", "='陈德玺'").first();
        userdel(user2);
    }

    public static void useradd(User user){
        UserDao dao = new UserDao();
        try{
            User user1 = new User();
            user1 = (User) dao.filter("name",user.getName()).first();
            user.setId(user.getId());
        }catch (Exception e){
            System.out.println("添加用户成功");
        }
        user.setRole("user");
        dao.add(user);
    }

    public static void userdel(User user){
        UserDao dao = new UserDao();
        dao.delete(user);
    }

}