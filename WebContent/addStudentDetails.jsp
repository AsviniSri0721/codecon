<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>CovidLanka</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  

    
  </style>
</head>
<body>

<nav class="navbar navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">CovidLanka</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="addStudentDetails.jsp">Add Students</a></li>
        <li><a href="viewStudent.jsp">Add Student temperature</a></li>
        <li><a href="fullDetailsView.jsp">Student Temperature</a></li>
        <li><a href="ReportTemp.jsp">Generate report</a></li>
        <li><a href="SendEmail.jsp">Send mail</a></li>
      </ul>
      
    </div>
  </div>
</nav>
<body>
<div class="jumbotron" >
<div div class="container text-center">
<form name="myForm" method="POST" action="AddStudent_Servlet" >

<br>
            <h2>Add Students </h2>
			<br><br>
			    <td>FULL NAME:</td>
				<td><input type="text"  name="fname" id="fname" class="form-control form-control-sm" required/><br>
			     
				<td>CLASS ID:</td>
				<td><input type="text" name="classid" id="class_id" class="form-control form-control-sm"  required/><br>
			
				<td>PARENT NAME:</td>
				<td><input type="text" name="pname" id="parent" class="form-control form-control-sm" required/><br>
			
				<td>PHONE:</td>
				<td><input type="text" name="phone" id="phone" class="form-control form-control-sm" required /><br>
				 
				<td>ADDRESS:</td>
				<td><input type="text" name="address" id="address" class="form-control form-control-sm" required /><br>
			
				 
			
			
		
	 	<button type="submit" class="btn btn-primary"  id="submit" onClick="">ADD</button> 
			
			
<button type="submit" class="btn btn-primary" id="submit" onClick="clearAll()">RESET</button>
			
		<script>
			function clearAll() {
				
				document.getElementById("fname").value = "";
				document.getElementById("class_id").value = "";
				document.getElementById("parent").value = "";
				document.getElementById("phone").value = "";
				document.getElementById("address").value = "";
			}
		</script>
		
</form>
</div>
</div>
</body>
</html>