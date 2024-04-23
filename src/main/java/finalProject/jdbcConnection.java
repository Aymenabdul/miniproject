package finalProject;
import java.sql.*;





public class jdbcConnection {
	public String root="root";
	public String jdbc="jdbc:mysql://localhost:3306/final";
	public String key="Aymen@123";
	public String loader="com.mysql.cj.jdbc.Driver";

	
	public void dbloader(String loader) {
		try {Class.forName(loader);} catch (ClassNotFoundException e) {e.printStackTrace();}
		
	}
	public String insert(member membo) throws Exception{
		String insert="insert into user (name,email,phone,password,cpassword)"+"values(?,?,?,?,?)";
		String result="Data Entered Succesfully";
		dbloader(loader);
		Connection con=DriverManager.getConnection(jdbc,root,key);
		try {
			PreparedStatement pst=con.prepareStatement(insert);
			pst.setString(1,membo.getName());
			pst.setString(2,membo.getEmail());
			pst.setString(3,membo.getPhone());
			pst.setString(4,membo.getPassword());
			pst.setString(5,membo.getCpassword());
			pst.executeUpdate();
		} catch (SQLException e) {
			result="Data Not Entered Correctly";
			e.printStackTrace();
		}
		return result;
	}
	public boolean check(String name, String pass) throws SQLException {
		dbloader(loader);
		String query="select * from user where name=? and password=?";
		Connection con=DriverManager.getConnection(jdbc,root,key);
		try {
			PreparedStatement pst=con.prepareStatement(query);
			pst.setString(1,name);
			pst.setString(2,pass);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	


}
