package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginUserDAO {

	   UserBean ub;
	   public UserBean login(String email ,String pword)
	   {
		     try {
				  Connection con=DBConnection.getCon();
				   PreparedStatement ps=con.prepareStatement("select * from enotes_user where email=?  and  password=? ");
				    ps.setString(1, email);
				    ps.setString(2, pword);
			ResultSet rs= ps.executeQuery();
			     while(rs.next())
			     {
			    	 ub=new UserBean();
			    	 ub.setId(rs.getString(1));
			    	 ub.setUname(rs.getString(2));
			    	 ub.setMail(rs.getString(3));
			    	 ub.setPword(rs.getString(4));
			     }
			      
				  
			} catch (Exception e) {
				 e.printStackTrace();
			}
		    return  ub;
		    
	   }
}
