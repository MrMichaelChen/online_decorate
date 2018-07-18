package daobase;

import java.sql.*;

public class GetConnection {
    public Connection getConnection()
    {
        Connection conn=null;
        try
        {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            }
            catch (ClassNotFoundException ex)
            {
                System.out.println("加载驱动程序有错误");
            }

            String url = "jdbc:mysql://192.168.1.108:3306/decorate?user=chen&password=123456";
            conn = DriverManager.getConnection(url);
            SqlFileExecutor FileExecutor = new SqlFileExecutor();
            FileExecutor.execute(conn,"./src/daobase/createdatabase.sql");
            System.out.println("成功创建数据库！！");

        }
        catch (SQLException ex1)
        {
            System.out.print("取得连接的时候有错误，请核对用户名和密码");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
    public static void main(String[]args)
    {
        GetConnection getConn=new GetConnection();
        getConn.getConnection();
    }

}
