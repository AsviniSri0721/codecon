<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3307/COVID";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String sid = request.getParameter("sid");
String mtemp=request.getParameter("mtemp");


if(sid != null)
{
Connection con = null;
PreparedStatement ps = null;

int personID = Integer.parseInt(sid);
try
{
	Class.forName(driverName);
	con = DriverManager.getConnection(url,user,psw);
	String sql="Update temprature set sid=?,mtemp=? where sid="+sid;
	ps = con.prepareStatement(sql);
	ps.setString(1,sid);
	ps.setString(2,mtemp);
	int i = ps.executeUpdate();
	if(i > 0)
	{
	out.print("Record Updated Successfully");
	//request.getRequestDispatcher("/fullDetailsView.jsp").forward(request, response);
	}
	else
	{
	out.print("There is a problem in updating Record.");
	} 
	}
	catch(SQLException sql)
	{
	request.setAttribute("error", sql);
	out.println(sql);
	}
	}
	%>