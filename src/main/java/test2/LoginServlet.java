package test2;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//passing the values to the method which you have entered to the form
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
		isTrue = DBUtil.Validate(username, password);
		
		//check if the data is inserted successfully 
		if(isTrue == true) {
			
			HttpSession session = request.getSession();
			session.setAttribute("username",username);
			
			//List <Manufacturer> ManuDetails = DBUtil.getManufacturer(username);
			//request.setAttribute("ManuDetails", ManuDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("ManuHome.jsp");
			
			dis.forward(request, response);
		}else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location ='ManuLogin.jsp'");
			out.println("</script>");
		}
		
		
		
	}

}
