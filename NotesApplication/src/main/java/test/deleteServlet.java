package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/delete")
public class deleteServlet extends HttpServlet{
	 @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String id=req.getParameter("note_id");
		    try {
		    	 HttpSession session =req.getSession();
				 boolean f=new addNoteDAO().delete(id);
				 if(f)
				 {
					 
					 System.out.println("delete sucessfully");
					  
					  session.setAttribute("deletemsg", "delete sucessfully");
					   resp.sendRedirect("showNotes.jsp");
					    
				 }
				 else
				 {
					  System.out.println("not delete");
					  session.setAttribute("deletemsg", "Something went wrong ");
					   resp.sendRedirect("showNotes.jsp");
				 }
			} catch (Exception e) {
				e.printStackTrace();
			}
	}

}
