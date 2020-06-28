<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form action="ReportOnTemp" method="get">
 <center> <b>STUDENTS TEMPERATURE IN SCHOOL</b></center>
  <br>
  <button>REPORT</button><br>
  <br><br>
  </form>
  
  </form>
  <form action="classReport" method="get">
 <center> <b>STUDENT TEMPERATURE ACCORDING TO CLASS</b></center>
  CLASS ID:<input type="text" name="classid" >
  <button>REPORT</button>
  <br><br>
   </form>
   
    <form action="AverageTempReport" method="get">
 <center> <b>STUDENT TEMPERATURE 35> </b></center>
  <br>
  <button>REPORT</button><br>
  <br><br>
  </form>
     <form action="AverageTempReportAfternoon" method="get">
 <center> <b>STUDENT TEMPERATURE 35> </b></center>
  <br>
  <button>REPORT</button><br>
  <br><br>
  </form>
</body>
</html>