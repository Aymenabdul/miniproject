package finalProject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/editEmp")
public class EmployeeEdit extends HttpServlet{
	
	
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 updateEmployee(request);
		 response.sendRedirect("homepage.jsp");
	 }
	public static boolean updateEmployee(HttpServletRequest request) {

	    String firstName = request.getParameter("firstName");
	    String secondName = request.getParameter("secondName");
	    String emailId = request.getParameter("emailId");
	    String phoneNumber = request.getParameter("phoneNumber");
	    String dob = request.getParameter("dob");
	    String Address = request.getParameter("Address");
	    String selected = request.getParameter("selected");
	    String radio = request.getParameter("radio");
	    String idVal = request.getParameter("id");

	    try {
	    	 Class.forName("com.mysql.cj.jdbc.Driver");
		        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/final", "root", "Aymen@123");
		        PreparedStatement prepare = con.prepareStatement("UPDATE hrmanagement SET firstName=?, secondName=?, emailId=?, phoneNumber=?, dob=?, Address=?, selected=?, radio=? WHERE id=?");
		        prepare.setString(1, firstName);
		        prepare.setString(2, secondName);
		        prepare.setString(3, emailId);
		        prepare.setString(4, phoneNumber);
		        prepare.setString(5, dob);
		        prepare.setString(6, Address);
		        prepare.setString(7, selected);
		        prepare.setString(8, radio);
		        prepare.setInt(9, Integer.valueOf(idVal));
		        prepare.executeUpdate();
		      
	    }catch (Exception e) {
			e.printStackTrace();
		}
	   return true;
	       
	      
	      
	}

}
