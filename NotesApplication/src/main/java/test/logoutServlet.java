package test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/logoutServlet")
public class logoutServlet extends HttpServlet {
	 @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 
		    try {
				  HttpSession session=req.getSession();
				  session.removeAttribute("userD");
				  HttpSession session1=req.getSession();
				  session1.setAttribute("logout", "logout Successfully...");
				  resp.sendRedirect("login.jsp");
		    	
			} catch (Exception e) {
				 e.printStackTrace();
			}
	}

}
