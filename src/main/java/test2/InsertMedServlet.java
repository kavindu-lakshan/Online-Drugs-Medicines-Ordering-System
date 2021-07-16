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


@WebServlet("/InsertMedServlet")
public class InsertMedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//passing the values to the method which you have entered to the form
		
		String id = request.getParameter("id");
		String mname = request.getParameter("Mname");
		String form = request.getParameter("forms");
		String strength = request.getParameter("strength");
		String price = request.getParameter("price");
		
		int convID =Integer.parseInt(id);
		float convForm =Float.parseFloat(strength);
		double convPrice =Double.parseDouble(price);
		
		boolean isTrue;
		
		isTrue = DBUtil.insertMedicine(convID, mname, form, convForm, convPrice);
		
		//check if the data is inserted successfully 
		if(isTrue == true) {
			
			List<Medicine> MedDetails = DBUtil.getMedicine(convID);
			request.setAttribute("MedDetails", MedDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("MedicineDetails.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Unsuccessful..!!');");
			out.println("location ='MedicineDetails.jsp'");
			out.println("</script>");
			
		}
		
		
	}

}
