package test2;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/DeleteMedServlet")
public class DeleteMedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//passing the values to the method which you have entered to the form
		
		String id = request.getParameter("id");
		String mname = request.getParameter("mname");
		String form = request.getParameter("form");
		String str = request.getParameter("str");
		
		int convID =Integer.parseInt(id);
		
		float convStr =Float.parseFloat(str);
		
		boolean isTrue;
		
		isTrue = DBUtil.deleteMedicinelist(convID, mname, form, convStr);
		
		//check if the data is inserted successfully 
		if(isTrue == true) {
			
			RequestDispatcher disp =request.getRequestDispatcher("MedicineDetails.jsp");
			disp.forward(request, response);
			
		}else {
			
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Unsuccessful..!!');");
			out.println("location ='MedicineDetails.jsp'");
			out.println("</script>");
		}
		
	}

}
