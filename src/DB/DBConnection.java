package DB;
import java.sql.*;

public class DBConnection {

	public static Connection CreateConnection()
	{
		Connection conn =null;
		String url="jdbc:mysql://localhost:3306/dbdemocmt";
		String username="root";
		String password="1234";
		
		try {
			//load Driver
			Class.forName("com.mysql.jdbc.Driver");
			
			conn=DriverManager.getConnection(url, username, password);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
