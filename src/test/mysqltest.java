package test;

import java.sql.*;

public class mysqltest {
	  public static void main(String[]args)
	  {
		  mysqltest getConn=new mysqltest();
		  getConn.getConnection();
	  }
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
					System.out.println("�������������д���");
				}
 
				String url = "jdbc:mysql://192.168.1.108:3306/decorate?user=chen&password=123456";
				conn = DriverManager.getConnection(url);
				System.out.println("�ɹ��������ݿ⣡��");
 
			}
			catch (SQLException ex1)
			{
				System.out.print("ȡ�����ӵ�ʱ���д�����˶��û���������");
			}
			return conn;
		}
}
