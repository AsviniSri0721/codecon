package servise;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Util.DataBaseCon;
import model.Temprature;

public class addTempMorningSER {

	public String addTemp(Temprature temprature1) {
		// TODO Auto-generated method stub
		String sid = temprature1.getSid();
		String mtemp = temprature1.getMtemp();
	
		
		
	
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DataBaseCon.createConnection();
	 String query = "insert into temprature(sid,mtemp) values (?,?)"; //Insert user details into the table 'USERS'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 preparedStatement.setString(1, sid);
	 preparedStatement.setString(2, mtemp);
	
	 
	
	 
	 int i= preparedStatement.executeUpdate();
	 
	 if (i!=0)  //Just to ensure data has been inserted into the database
	 return "SUCCESS"; 
	 }
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 
	 return "Oops.. Something went wrong there..!";
	}


}


