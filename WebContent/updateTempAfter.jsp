<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Update afternoon temperature </h1>
<form  method="POST" action="addTempAfternoon">


STUDENT ID:<br>
<input type="text"  name="sid" class="form-control form-control-sm" required/>
<br>
AFTERNOON TEMPERATURE:<br>
<input type="text"  name="atemp" class="form-control form-control-sm" required/>

<br><br>
<input type="submit"  value="submit">
</form>

</body>
</html>