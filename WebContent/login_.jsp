<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="javax.servlet.http.HttpServletResponse"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%

String uname=request.getParameter("uname");
session.putValue("uname",uname);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/COVID","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from users where uname='"+uname+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("uname").equals(uname))
{
out.println("Welcome " +uname);
request.getRequestDispatcher("/viewStudent.jsp").forward(request, response);
}
else{
out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>