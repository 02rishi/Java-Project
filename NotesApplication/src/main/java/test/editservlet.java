package test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@SuppressWarnings("serial")
@WebServlet("/editservlet")
public class editservlet extends HttpServlet {


	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	   
	      String id=req.getParameter("id");
	       String title=req.getParameter("title");
	       String Content=req.getParameter("content");
	        try {
				 boolean  k=new addNoteDAO().update(id, title, Content);
				 if(k)
				 {
					 System.out.println("data update succesfully");
					 HttpSession session=req.getSession();
					   session.setAttribute("msg", "Notes Update Sucessfully");
					   resp.sendRedirect("showNotes.jsp");
				 }
				 else 
				 {
					 System.out.println("data not updated");
				 }
				 
			} catch (Exception e) {
				// TODO: handle exception
			}
	}

}
