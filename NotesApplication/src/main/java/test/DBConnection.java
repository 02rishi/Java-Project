package test;

import static test.DBInfo.dburl;
import static test.DBInfo.pword;
import static test.DBInfo.uname;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection con=null;
    public DBConnection() {}
 static {
	 try {
		 Class.forName("oracle.jdbc.driver.OracleDriver");
		   con=DriverManager.getConnection(dburl,uname,pword);
		   
	} catch (Exception e) {
		e.printStackTrace();
	}
	
 }
public static Connection getCon() {
	return con;
}
}
