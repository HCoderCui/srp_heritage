package Dao;

import java.sql.SQLException;

import util.DBHelper;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

public class check_userInfo {
   
	public boolean check_info(String e_mail,String password)
	{
		Connection conn = null;
		java.sql.Statement stmt = null;
		ResultSet rs = null;
		try
		{
			conn = DBHelper.getConnection();
			String sql = "select * from user_info";
			stmt =  conn.createStatement();
			rs = (ResultSet) stmt.executeQuery(sql);
			while(rs.next())
			{
				String[] d = rs.getString(1)                                                                                                                                                                                                                                                                                                                                    .split(" ");
			
				for(int i = 0;i<d.length;i++)
				{
					System.out.println("first");
					if(d[i].equals(e_mail))
					{					
						String[] D = rs.getString(2).split(" ");
						if(D[i].equals(password))
							{
							System.out.println("second");
							return true;
							}
					}					
				}	
			}
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
		return false;
	}
}
