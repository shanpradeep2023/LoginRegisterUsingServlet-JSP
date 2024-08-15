package pk1.pk2Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao {
	
	String url = "jdbc:mysql://localhost:3306/login";
	String username = "root";
	String password = "January3445.";
	String query = "select * from credentials where uname=? and pass=?";
	String data="";
	
	public boolean cheak(String uname,String pass) throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement st = con.prepareStatement(query);
		st.setString(1, uname);
		st.setString(2, pass);
		
		ResultSet rs = st.executeQuery();
		if(rs.next()) {
			data = rs.getString(1);
			return true;
		}
		return false;
	}
	
	public String getData() {
		return data;
	}
}
