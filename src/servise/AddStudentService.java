package servise;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Student;
import Util.DataBaseCon;


public class AddStudentService {
	

	public String addStudent(Student student1) {
		// TODO Auto-generated method stub
		String fname = student1.getFname();
		String classid = student1.getClassid();
		String pname = student1.getPname();
		String phone = student1.getPhone();
		String address = student1.getAddress();
		
		
	
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DataBaseCon.createConnection();
	 String query = "insert into student(fname,classid,pname,phone,address) values (?,?,?,?,?)"; //Insert user details into the table 'USERS'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 preparedStatement.setString(1, fname);
	 preparedStatement.setString(2, classid);
	 preparedStatement.setString(3, pname);
	 preparedStatement.setString(4, phone);
	 preparedStatement.setString(5, address);
	 
	
	 
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
