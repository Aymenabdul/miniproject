package finalProject;
import java.sql.*;
import java.util.*;
public class getConnection {
public String loader="com.mysql.cj.jdbc.Driver";
public String url="jdbc:mysql://localhost:3306/final";
public String name="root";
public String passcode="Aymen@123";
public String insert="insert into hrmanagement(firstName,secondName,emailId,phoneNumber,Address,dob,selected,radio)"+
"value(?,?,?,?,?,?,?,?)";
public String update="update hrmanagement set firstName=?,secondName=?,emailId=?,phoneNumber=?,dob=?,selected=?,radio=? where id=?";
public String delete="delete from hrmanagement where id=?";
public String select="select firstName,secondName,emailId,phoneNumber,Address,dob,selected,radio from hrmanagement where id=?";
public String selectall="select * from hrmanagement";

public void dbloader(String loader) {
	try {Class.forName(loader);} catch (ClassNotFoundException e) {}
}
public String insert(Getting getting) throws Exception {
	String result="Data Enterd Correctly";
	dbloader(loader);
	Connection con=DriverManager.getConnection(url,name,passcode);
	try {
		PreparedStatement prepare=con.prepareStatement(insert);
		prepare.setString(1,getting.getFirstName());
		prepare.setString(2,getting.getSecondName());
		prepare.setString(3,getting.getEmailId());
		prepare.setString(4,getting.getPhoneNumber());
		prepare.setString(5,getting.getDob());
		prepare.setString(6,getting.getAddress());
		prepare.setString(7,getting.getSelected());
		prepare.setString(8,getting.getRadio());
		prepare.executeUpdate();
		
	} catch (SQLException e) {
		result="data Not Entered Coorectly";
		e.printStackTrace();
	}
	return result;
}
}
