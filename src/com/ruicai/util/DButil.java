package com.ruicai.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ResourceBundle;



public class DButil {
	
	
	private static final String URL;
	private static final String USER;
	private static final String PASSWORD;
	private static final String Driver_Class;
	
	//��̬��
	static
	{
		ResourceBundle rb = ResourceBundle.getBundle("dbconfig");
		
		URL=rb.getString("URL");
		USER=rb.getString("USER_NAME");
		PASSWORD=rb.getString("PASSWORD");
		Driver_Class=rb.getString("DRIVER_CLASS");
		
	}
	
	//getConnectiong()�ķ�������һ��Connection
			public static Connection getConnection(){
				
				Connection conn=null;
				
				try {
					Class.forName(Driver_Class);
					conn=DriverManager.getConnection(URL,USER,PASSWORD);
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				//����conn���Ӷ���
				return conn;
			}
			
			
			//����һ���ر�connection���ӵķ��� �޷���ֵ�ľ�̬����
			public static void closeConn(Connection conn,Statement state){
				if(conn!=null){
					try {
						conn.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				
				if(state!=null){
					try {
						state.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
			
			
//			public static void main(String[] args)throws Exception {
//				
//				//���������Ƿ���ʹ��
//				Connection conn=DButil.getConnection();
//				Statement stmt=conn.createStatement();
//				ResultSet rs=stmt.executeQuery("select * from t_student");
//				
//				while(rs.next()){
//					System.out.println(rs.getString(2));
//				}
//				
//				
//			}
		
	
}
