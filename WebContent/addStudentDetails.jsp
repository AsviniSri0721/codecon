<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<form name="myForm" method="POST" action="AddStudent_Servlet" >


            <h2>Add Students </h2>
			
			    <td>FULL NAME:</td>
				<td><input type="text"  name="fname" class="form-control form-control-sm" required/><br>
			     
				<td>CLASS ID:</td>
				<td><input type="text" name="classid" class="form-control form-control-sm"  required/><br>
			
				<td>PARENT NAME:</td>
				<td><input type="text" name="pname" class="form-control form-control-sm" required/><br>
			
				<td>PHONE:</td>
				<td><input type="text" name="phone" class="form-control form-control-sm" required /><br>
				 
				<td>ADDRESS:</td>
				<td><input type="text" name="address" class="form-control form-control-sm" required /><br>
			
				 
			
			
		
	 	<button type="submit" class="btn btn-primary"  id="submit" onClick="">ADD</button> 
			
			
<button type="submit" value="reset" class="btn btn-primary" id="submit" onClick="">RESET</button>
			
		
		
</form>
</body>
</html>