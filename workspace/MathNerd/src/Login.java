

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 public Login() {
	    	super();
	    }
	    
	    public void init() throws ServletException {
			super.init();
			
			if (this.getServletContext().getAttribute("users") == null) {
				ArrayList<User> users = new ArrayList<User>();
				
				users.add(new User(1, "John", "Doe", "john@doe.com", "1!"));
				users.add(new User(2, "Mary", "Jane", "mary@jane.com", "2@"));
				
				this.getServletContext().setAttribute("users", users);
			}
		}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String remember = request.getParameter("remember");
		
//		set a cookie to remember a user.
		
		
//		System.out.println(remember);
//		
//		Enumeration enumeration = request.getParameterNames();
//		
//		while (enumeration.hasMoreElements()) {
//			System.out.println((String)enumeration.nextElement());
//		}
		
		
		ArrayList<User> users = (ArrayList<User>)this.getServletContext().getAttribute("users");
		
		if (email != null && email.trim().length() > 0 && password != null && password.trim().length() > 1) {
			for (User user : users) {
				if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
					session.setAttribute("CurrentUser", user);
					
					response.sendRedirect("http://localhost:8080/MathNerd/Home");
					return;
				}
			}
		}
		else {
			request.setAttribute("loginError", "Error: Your login Information is Incorrect.");

			doGet(request, response);
		}
	}
}