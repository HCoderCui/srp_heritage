package util;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class DBHelper {
    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String url = "jdbc:mysql://localhost/test";
    private static final String username = "root";
    private static final String password = "asd123";
    
    private static Connection conn;
    
    static
    {
    	try{
    		Class.forName(driver);
    		
    	}catch(Exception ex)
    	{
    		ex.printStackTrace();
    		System.out.println("¡¨Ω”¥ÌŒÛ");
    	}
    }
    public static Connection getConnection()
    {
    	if(conn==null)
    	{
    		try {
				conn = (Connection) DriverManager.getConnection(url, username, password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("¥ÌŒÛ“ª");
			}
    		return conn;
    	}
    	return conn;
    }
}
