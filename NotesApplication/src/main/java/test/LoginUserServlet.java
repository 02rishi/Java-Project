  package test;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/login")
public class LoginUserServlet extends HttpServlet  {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		    String email=req.getParameter("email");
		    String pword=req.getParameter("pword");
		     UserBean ub=new LoginUserDAO().login(email, pword);
		       HttpSession session=req.getSession();
		     if(ub!=null)
	          {
	        	   session.setAttribute("userD", ub);
	        	 
	        	   resp.sendRedirect("Home.jsp");
	          }
	          else
	          {
	        	  session=req.getSession();
	        	  session.setAttribute("login-failed", "Invalid email and password");
	        	  resp.sendRedirect("login.jsp");
	        	   
	        	
	          }
	}

}
