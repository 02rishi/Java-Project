package test;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegistrationDAO {
	int k=0;
   public int insert(UserBean ub)
   {
	   try {
		    Connection con=DBConnection.getCon();
		     PreparedStatement ps=con.prepareStatement("insert into enotes_user values(ENOTES_SEQUENCE.nextval,?,?,?)");
		      ps.setString(1, ub.getUname());
		      ps.setString(2, ub.getMail());
		      ps.setString(3, ub.getPword());
		      
		      
		 
		   k=ps.executeUpdate();
		        
	   }catch (Exception e) {
		   e.printStackTrace();
		
	}
	   return k;
   }

}
