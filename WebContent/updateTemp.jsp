<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Update morning temperature </h1>
<form  method="POST" action="addTempMorning">


STUDENT ID:<br>
<input type="text"  name="sid" class="form-control form-control-sm" required/>
<br>
MORNING TEMPERATURE:<br>
<input type="text"  name="mtemp" class="form-control form-control-sm" required/>

<br><br>
<input type="submit"  value="submit">
</form>

</body>
</html>