package test2;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ShowMedServlet")
public class ShowMedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//passing the values to the method which you have entered to the form
		String id = request.getParameter("id");
		String mname = request.getParameter("mname");
		String form = request.getParameter("form");
		String str = request.getParameter("str");
		
		
		int convID =Integer.parseInt(id);
		
		float convStr =Float.parseFloat(str);
	
		
		
		
		List<Medicine> showmed = DBUtil.showMedDetails(convID, mname, form, convStr);
		
		request.setAttribute("showmed", showmed);
		
		RequestDispatcher dis =request.getRequestDispatcher("UpdateMedicine.jsp");
		dis.forward(request, response);
		
	}

}
