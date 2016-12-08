package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Say;

import dao.SayDao;



public class DbUtil {
   //���ӵ���ݿⷽ��
	
	private Connection conn;
	
	
	public Connection getConn(){
		//1.ע����--���ӵ�ʲô��ݿ�
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		//2��ݿ�λ�úͶ˿ں�
		String url="jdbc:mysql://localhost/fruit";
		//3�û�������
		String username="root";
		String password="root";
		//4����
		try {
			conn=DriverManager.getConnection(url,username,password);
			return conn;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public static void main(String[] args) {
		
	}
}

