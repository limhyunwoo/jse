package com.homepage.web.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.homepage.web.beans.BoardBean;

import oracle.jdbc.OracleDriver;


public class CopyOfJdbcTest2 {
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs= null;
	
	
	public Connection getConnection() throws NamingException, SQLException {
		
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext  = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");

		conn = ds.getConnection();
		return conn;
		
	}
	
		public static void main(String[] args) {
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs= null;
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String user = "movie";
				String pass = "movie";
				
				BoardBean bean = new BoardBean();
				
				
				//ctrl shift o   임포트 잘보고하기
				OracleDriver od = new OracleDriver();
				Properties info = new Properties();
				info.put("user",user);
				info.put("password", pass);
				
				
				try {
					conn = od.connect(url, info);
					stmt = conn.createStatement();
					rs = stmt.executeQuery("select  e.user_id, e.brd_title  on board e join member m   using (user_id)");
					while (rs.next()) {
						bean.setBrd_type(rs.getString("BRD_TYPE"));
						bean.setBrd_no(Integer.parseInt(rs.getString("BRD_NO")));
						bean.setBrd_date( rs.getString("BRD_DATE"));
						bean.setBrd_category(rs.getString("BRD_CATEGORY"));
						bean.setBrd_title(rs.getString("BRD_TITLE"));
						bean.setBrd_content(rs.getString("BRD_CONTENT"));
						bean.setBrd_views(Integer.parseInt(rs.getString("BRD_VIEWS")));
						bean.setUser_id(rs.getString("USER_ID"));
						
						
						
				
						System.out.print(bean.getBrd_type()+ "\t");
						System.out.print(bean.getBrd_no() + "\t");
						System.out.print(bean.getBrd_date() + "\t");
						System.out.print(bean.getBrd_category() + "\t");
						System.out.print(bean.getBrd_title() + "\t");
						System.out.print(bean.getBrd_content() + "\t");
						System.out.print(bean.getBrd_views()+ "\t");
						System.out.print(bean.getUser_id()+ "\t");
						System.out.println();
						
						
						
					}
				
				} catch (SQLException e) {
					
					e.printStackTrace();
				}finally{
					try {
						rs.close();
						stmt.close();
						conn.close();
					} catch (SQLException e) {
						
						e.printStackTrace();
					}
			
					
					
				}
				
				
				
			
		}

}
