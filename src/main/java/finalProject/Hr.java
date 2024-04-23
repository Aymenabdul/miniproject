package finalProject;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hr
 */
@WebServlet("/Hr")
public class Hr extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Hr() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
	String firstName=request.getParameter("firstName");
	String secondName=request.getParameter("secondName");
	String emailId=request.getParameter("emailId");
	String phoneNumber=request.getParameter("phoneNumber");
	String dob=request.getParameter("dob");
	String Address=request.getParameter("Address");
	String selected=request.getParameter("selected");
	String radio=request.getParameter("radio");
	
	Getting getting=new Getting(firstName,secondName,emailId,phoneNumber,dob,Address,selected,radio);
	getConnection jcd=new getConnection();
	String result;
	try {
	result=jcd.insert(getting);
	response.sendRedirect("homepage.jsp");
	}catch(Exception e) {
		response.sendRedirect("homepage.jsp");
	}
    }
    

}
