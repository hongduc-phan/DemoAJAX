package DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import BEAN.Comment;

public class CommentDAO {

	//insert database into sql
	public static void InsertComment(Connection conn,Comment cmt)
	{
		PreparedStatement ptmt = null;
		String sql = "insert into comment (username, content) values(?,?)";
		try {
			ptmt = conn.prepareStatement(sql);
			String username= cmt.getUsername();
			String content= cmt.getContent();
			
			ptmt.setString(1,username);
			ptmt.setString(2, content);
			
			ptmt.executeUpdate();
			ptmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	
	//display dabase
	public static List<Comment> DisplayComment(Connection conn) throws SQLException
	{
		List<Comment> list = new ArrayList<Comment>();
		
		String sql = "select * from comment";
		
		PreparedStatement ptmt;
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			
			while ( rs.next())
			{
				Comment cmt = new Comment();
				String content = rs.getString("content");
				String username = rs.getString("username");
				
				cmt.setContent(content);
				cmt.setUsername(username);
				list.add(cmt);
							
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		return list;
	
	}
}
