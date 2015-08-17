package Dao;

import java.sql.SQLException;

import util.DBHelper;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.ResultSet;

public class new_users {
    public new_users(String e_mail,String password,String name,String sex,String home_town,String path)
    {
    	Connection conn = null;
		java.sql.Statement stmt = null;
		//ResultSet rs = null;
		try
		{
			conn = DBHelper.getConnection();
			String sql = "insert into user_info values('"+e_mail+"','"+password+"','"+name+"','"+sex+"','"+home_town+"','"+path+"')";
			System.out.println(sql);
			stmt =  conn.createStatement();
			stmt.execute(sql);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
//			if(rs!=null)
//			{
//				try {
//					rs.close();
//					rs=null;
//				} catch (SQLException e) {
//					e.printStackTrace();
//				}				
//			}
			if(stmt!=null)
			{
				try {
					stmt.close();
					stmt = null;
				} catch (SQLException e) {
					e.printStackTrace();
				}				
			}
		}
    }
    public new_users(String e_mail, String pa_name,String pa_town,int flag)
    {
    	Connection conn = null;
		java.sql.Statement stmt = null;
		ResultSet rs = null;
		try
		{
			conn = DBHelper.getConnection();
			String sql ;
			if(flag==1)
				sql = "insert into fath_info values('"+e_mail+"','"+pa_name+"','"+pa_town+"')";
			else
				sql = "insert into moth_info values('"+e_mail+"','"+pa_name+"','"+pa_town+"')";
			System.out.println(sql);
			stmt =  conn.createStatement();
			stmt.execute(sql);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if(rs!=null)
			{
				try {
					rs.close();
					rs=null;
				} catch (SQLException e) {
					e.printStackTrace();
				}				
			}
			if(stmt!=null)
			{
				try {
					
					stmt.close();
					stmt = null;
				} catch (SQLException e) {
					e.printStackTrace();
				}				
			}
		}
    }
    
}
