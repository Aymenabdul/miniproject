package finalProject;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userServlet
 */
@WebServlet("/userServlet")
public class userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");
		String cpassword=request.getParameter("cpassword");
		
		member membo=new member(name,email,phone,password,cpassword);
		jdbcConnection jdbc=new jdbcConnection();
		
		String result;
		try {
			result = jdbc.insert(membo);
			response.sendRedirect("signin.jsp");
		} catch (Exception e) {
			response.sendRedirect("signup.jsp");
			e.printStackTrace();
		}
		
	}

}
