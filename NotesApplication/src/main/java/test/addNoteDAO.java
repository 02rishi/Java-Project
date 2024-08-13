package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class addNoteDAO {
	
	public boolean addNotes(String eid,String title,String Content )
	{
		boolean f=false;
		try {
			Connection con=DBConnection.getCon();
			PreparedStatement ps=con.prepareStatement("insert into enote_content values(ENOTE_CONTENT_SEQUENCE.nextval,?,?,?)");
			     ps.setString(1, title);
			     ps.setString(2,Content);
			     ps.setString(3, eid);
			   int k = ps.executeUpdate();
			    if(k==1)
			    {
			    	f=true;
			    }
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	public List<addNotesBean> getData(String id){
		List<addNotesBean> list=new ArrayList<addNotesBean>();
		 addNotesBean ad=null;
		    try {
		    	Connection con=DBConnection.getCon();
		    	PreparedStatement ps=con.prepareStatement("select * from enote_content where eid=? order by id desc");
		    	ps.setString(1, id);
		    	ResultSet rs=ps.executeQuery();
		    	while(rs.next())
		    	{    ad=new  addNotesBean();
		    		ad.setId(rs.getString(1));
		    		ad.setTitle(rs.getString(2));
		    		ad.setContent(rs.getString(3));
		    		list.add(ad);
		    	}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		 
		return list;
	}
   
	 public addNotesBean getDataById(String id)
	 {
		 addNotesBean a=null;
		 try {
			 Connection con=DBConnection.getCon();
		    	PreparedStatement ps=con.prepareStatement("select * from enote_content where Id=?");
		    	ps.setString(1, id);
		    	ResultSet rs=ps.executeQuery();
		    	if(rs.next())
		    	{
		    		a=new addNotesBean();
		    		a.setId(rs.getString(1));
		    		a.setTitle(rs.getString(2));
		    		a.setContent(rs.getString(3));
		    		
		    	}
		} catch (Exception e) {
		   e.printStackTrace();
		}
		 return a; 
				  
	 }
	 
	 public boolean update(String eid,String title,String Content )
		{
			boolean f=false;
			try {
				Connection con=DBConnection.getCon();
				PreparedStatement ps=con.prepareStatement("update enote_content set title=?,content=? where id=? ");
				     ps.setString(1, title);
				     ps.setString(2,Content);
				     ps.setString(3, eid);
				   int k = ps.executeUpdate();
				    if(k==1)
				    {
				    	f=true;
				    }
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			
			return f;
		}
	 public boolean delete(String eid)
		{
			boolean f=false;
			try {
				Connection con=DBConnection.getCon();
				PreparedStatement ps=con.prepareStatement("DELETE FROM enote_content WHERE id=?");
				     
				     ps.setString(1, eid);
				   int k = ps.executeUpdate();
				    if(k==1)
				    {
				    	f=true;
				    }
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			
			return f;
		}
}
