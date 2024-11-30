package UserAct;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Capture user details from SignUp page
		String username = request.getParameter("uname");
		String email = request.getParameter("email");
		String password = request.getParameter("pwd");
		
		boolean isTrue;
		
		//Call the insertUser() method
		isTrue = UserDBUtil.insertUser(username, email, password);
		
		//Check the execution of SQL statement
		if(isTrue == true) {
			//Navigate another page if the query is successfully executed
			RequestDispatcher dis = request.getRequestDispatcher("/Success.jsp");
			dis.forward(request, response);
		}
		else {
			//Navigate another page if the query is not successfully executed
			RequestDispatcher dis2 = request.getRequestDispatcher("/Unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}