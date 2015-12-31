

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Register() {
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
		HttpSession session = request.getSession();
		User currentUser = (User)session.getAttribute("CurrentUser");
		
		if (currentUser != null) {
			response.sendRedirect("http://localhost:8080/MathNerd/Login");
			return;
		}
		
		request.setAttribute("user", currentUser);
        request.getRequestDispatcher("/WEB-INF/Register.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
		boolean validFirstName = false;
		boolean validLastName = false;
		boolean validEmail = false;
		boolean validPassword = false;
		boolean validPassword2 = false;
		
		if (firstName.length() > 1 && firstName.matches("^[A-Z][a-z]+$")){
			validFirstName = true;
			request.setAttribute("firstName", firstName);
		}
		else {
			validFirstName = false;
			request.setAttribute("firstNameError", "Error: First name must be correctly formatted.");
		}
		
		if (lastName.length() > 1 && lastName.matches("^[A-Z][a-z]+$")){
			validLastName = true;
			request.setAttribute("lastName", lastName);
		}
		else {
			validLastName = false;
			request.setAttribute("lastNameError", "Error: Last name must be correctly formatted.");
		}
		
		if (email.matches("[A-Za-z0-9[!#$%&'()*+,/]]+@[A-Za-z0-9[!#$%&'()*+,/]]+[\\.][A-Za-z]+$")) {
			validEmail = true;
			request.setAttribute("email", email);
		}
		else {
			validEmail = false;
			request.setAttribute("emailError", "Error: Email must be correctly formatted.");
		}
		
		if (password1.trim().length() > 1 && password1.matches(".*\\d.*") && password1.matches(".*[!@#$%^&*()].*")) {
			validPassword = true;
		}
		else{
			validPassword = false;
			request.setAttribute("passwordError", "Error: Password must be contain at least one number and one special character and password must be longer than 1 character.");
		}
		
		if (password2.equals(password1)) {
			validPassword2 = true;
		}
		else{
			validPassword2 = false;
			request.setAttribute("passwordReenterError", "Error: Password must match the first password.");
		}
		
		if (validFirstName && validLastName && validEmail && validPassword && validPassword2) {
			ArrayList<User> users = (ArrayList<User>) getServletContext().getAttribute("users");
			users.add(new User(firstName, lastName, email, password1));
			
			getServletContext().setAttribute("users", users);
			
			response.sendRedirect("http://localhost:8080/MathNerd/Login");
			return;
		}
		else {
			doGet(request, response);	
		}
	}
}
