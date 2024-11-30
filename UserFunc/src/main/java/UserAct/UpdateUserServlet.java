package UserAct;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Assign user details
		String id = request.getParameter("uid");
		String uname = request.getParameter("uname");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		
		boolean isTrue;
		
		//Call the updateUser() method
		isTrue = UserDBUtil.updateUser(id, uname, email, pwd);
		
		if(isTrue == true) {
			List<User> userDetails = UserDBUtil.getUserDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			//If the query is successfully executed
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
		}
		else {
			List<User> userDetails = UserDBUtil.getUserDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			//If the query is not successfully executed
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
		}
	}

}
