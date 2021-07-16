package test2;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/UpdateMedServlet")
public class UpdateMedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//passing the values to the method which you have entered to the form
		
		String id = request.getParameter("id");
		String mname = request.getParameter("Mname");
		String form = request.getParameter("forms");
		String str = request.getParameter("strength");
		String pr = request.getParameter("price");
		
		int convID =Integer.parseInt(id);
		
		float convStr =Float.parseFloat(str);
		double convPr = Double.parseDouble(pr);
		
		boolean isTrue;
		
		isTrue = DBUtil.UpdateMedDetails(convID, mname, form, convStr, convPr);
		
		//check if the data is inserted successfully 
		if(isTrue == true) {
			
			List<Medicine> showmed = DBUtil.getMedicine(convID);
			request.setAttribute("showmed", showmed);
			
			RequestDispatcher dis = request.getRequestDispatcher("MedicineDetails.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Medicine> showmed = DBUtil.getMedicine(convID);
			request.setAttribute("showmed", showmed);
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Unsuccessful..!!');");
			out.println("location ='MedicineDetails.jsp'");
			out.println("</script>");
			
		}
	}

}
