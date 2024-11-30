package UserAct;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("uid");
		boolean isTrue;
		
		//Call the deleteUser() method
		isTrue = UserDBUtil.deleteUser(id);
		
		if(isTrue == true) {
			//If the query is successfully executed
			RequestDispatcher dis = request.getRequestDispatcher("SignUp.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<User>userDetails = UserDBUtil.getUserDetails(id);
			request.setAttribute("userDetails", userDetails);
			
			//If the query is not successfully executed
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
			
		}
		
	}

}
