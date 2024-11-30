package UserAct;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
;	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//Capture user credentials which the user entered
		String username = request.getParameter("uid");
		String password = request.getParameter("pwd");
		boolean isTrue;
		
		//Call the validate method
		isTrue = UserDBUtil.validate(username, password);
		
		//Checking whether the SQL statement was executed successfully or not
		if(isTrue == true) {
			List<User> userDetails = UserDBUtil.getUser(username);
			HttpSession session = request.getSession();
			
			session.setAttribute(username, password);
			request.setAttribute("userDetails", userDetails);
			
			//Navigate from Login page to Home page
			RequestDispatcher dis = request.getRequestDispatcher("Home.jsp");
			dis.forward(request, response);
			
		}
		else {
			//JavaScript Login Validation
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Username or Password is incorrect!');");
			out.println("location= 'Login.jsp'");
			out.println("</script>");
		}
		
	}

}