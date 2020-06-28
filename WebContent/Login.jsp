<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</style>
<script>
function myFunction() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}

      function validate() {
            var uname = document.getElementById("uname").value;
            var password = document.getElementById("password").value;
            if (uname == null || uname == "") {
                alert("Please enter the uname.");
                return false;
            }
            if (password == null || password == "") {
                alert("Please enter the password.");
                return false;
            }
            alert('Login successful');
            
        } 
      
</script>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
      </li>
      <li><a href="#">Page 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
<div class="container">
		<div class="row">
			<div class="col-6">
<form action="login_.jsp" method="post" >

<h2>Login </h2>


<label  id="a" >Username:</label>
<input class="form-control form-control-sm" type="text" name="uname" placeholder="Enter Username" id="uname" ><br/><br/>

<label  id="a" >Password:</label>
<input  class="form-control form-control-sm" type="password" name="password" placeholder="Enter Password" id="password" required ><br/><br/>
<input type="checkbox" onclick="myFunction()">Show Password

<button type="submit" value="Login" class="btn btn-primary" id="submit"  required onclick="validate()">Login</button>

</form>
</div>
</div>
</div>

</body>
</body>
</html>