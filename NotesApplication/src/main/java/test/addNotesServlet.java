package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/addNotes")
public class addNotesServlet extends HttpServlet {
  @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		String uid=req.getParameter("uid");
		String title=req.getParameter("title");
		String content=req.getParameter("content");
		    addNotesBean ab=new addNotesBean();
		       ab.setCid(uid);
		       ab.setTitle(title);
		       ab.setContent(content);
		         
		        boolean f=new addNoteDAO().addNotes(uid,title,content);
		         if(f)
		         {
		        	System.out.println("data insert succesgully"); 
		        	 resp.sendRedirect("showNotes.jsp");
		         }
		         else 
		         {
		        	System.out.println("data not  inserted"); 
		         }
	} catch (Exception e) {
		e.printStackTrace();
	}
	       
	      
	
	
}
}
