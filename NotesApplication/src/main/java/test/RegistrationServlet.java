package test;
import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.startup.ClassLoaderFactory.Repository;
@SuppressWarnings("serial")
@WebServlet("/registor")
public class RegistrationServlet extends HttpServlet {
	  @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserBean ub=new UserBean();
		   ub.setUname(req.getParameter("uname"));
	     
	       ub.setMail(req.getParameter("email"));
	       ub.setPword(req.getParameter("pword"));
	       
	       
	        int k= new RegistrationDAO().insert(ub);
	        HttpSession session =req.getSession();
	      
	          if(k==1)
	          {
	        	    session=req.getSession();
	        	   session.setAttribute("reg-sucess", "Registration Sucessfully");
	        	   resp.sendRedirect("register.jsp");
	          }
	          else
	          {
	        	  session=req.getSession();
	        	  session.setAttribute("failed-msg", "Something went wrong");
	        	  resp.sendRedirect("register.jsp");
	        	   
	        	
	          }
     
	}

}
