<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3307/COVID";%>
<%!String user = "root";%>
<%!String psw = "";%>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="">Page 1</a></li>
      <li><a href="">Page 2</a></li>
    </ul>
    <form action="fullDetailsView.jsp" class="navbar-form navbar-left" action="/action_page.php">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Enter class id" name="classid">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
  </div>
</nav>
<center><h1>Student Details</h1></center>

<%
String sid = request.getParameter("sid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String database = "COVID";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>

<html>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<head>
<script>
function myFunction() {
	  var input, filter, table, tr, td, i, txtValue;
	  input = document.getElementById("myInput");
	  filter = input.value.toUpperCase();
	  table = document.getElementById("myTable");
	  tr = table.getElementsByTagName("tr");
	  for (i = 0; i < tr.length; i++) {
	    td = tr[i].getElementsByTagName("td")[1];
	    if (td) {
	      txtValue = td.textContent || td.innerText;
	      if (txtValue.toUpperCase().indexOf(filter) > -1) {
	        tr[i].style.display = "";
	      } else {
	        tr[i].style.display = "none";
	      }
	    }       
	  }
	}

   
// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
<br><br>
 <input class="form-control" type="text" id="myInput" onkeyup="myFunction()" placeholder="Search username...." >
 <br><br>
 <div class="container">
<table id="myTable" class="table table-striped">
<tr class="header">
<th >STUDENT ID</th>
<th >FULL NAME</th>
<th >PARENT NAME:</th>
<th >PHONE</th>
<th >ADDRESS</th>
<th >MORNING TEMPREATURE</th>
<th >AFTERNOON TEMPREATURE</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select distinct* from student s,temprature t where s.sid=t.sid and s.classid='"+request.getParameter("classid")+"' ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr id="myTable" class="table table-striped">
<td><%=resultSet.getString("sid") %></td>
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("pname") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("mtemp") %></td>
<td><%=resultSet.getString("atemp") %></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}


String fname=request.getParameter("fname");
String pname = request.getParameter("pname");
String phone=request.getParameter("phone");
String address = request.getParameter("address");
String mtemp=request.getParameter("mtemp");
String atemp=request.getParameter("atemp");

if(sid != null)
{
Connection con = null;
PreparedStatement ps = null;

int personID = Integer.parseInt(sid);
try
{
	Class.forName(driverName);
	con = DriverManager.getConnection(url,user,psw);
	String sql="Update student set sid=?,fname=?,pname=?,phone=?,address=?,mtemp=?,atemp=? where sid="+sid;
	ps = con.prepareStatement(sql);
	ps.setString(1,sid);
    ps.setString(2,fname);
	ps.setString(3,pname);
	ps.setString(4,phone);
	ps.setString(5,address);
	ps.setString(6,mtemp);
	ps.setString(7,atemp);
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



</table>
</div>
</div>
</div>
</div>

</body>
</body>
</html>