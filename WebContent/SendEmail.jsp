<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
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

<nav class="navbar navbar-inverse">
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
        <li ><a href="addStudentDetails.jsp">Add Students</a></li>
        <li><a href="viewStudent.jsp">Add Student temperature</a></li>
        <li><a href="fullDetailsView.jsp">Student Temperature</a></li>
        <li><a href="ReportTemp.jsp">Generate report</a></li>
        <li class="active"><a href="SendEmail.jsp">Send mail</a></li>
        
      </ul>
      
    </div>
  </div>
</nav>

    </head>
    <br><br>
    <center><h1>Mail</h1></center><br>
    <body >
     <div class="container">
        <form action="mailProcess.jsp" action="SendAttachment" >
            <table class="table table-striped">
                <tr><td><b><font color="black">To:
                    </td>
                    <td><b><b><input type="text" name="mail" value="Enter Sender Email"/><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b><font color="black">Subject:
                    </td>
                    <td>
                        <input type="text" name="sub" value="Enter Subject"><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b><font color="black">Message Text:
                    </td>
                    <td>
                        <textarea rows="12" cols="80" name="mess"></textarea><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Send" class="btn btn-primary">
                    </td>
                    <td>
                        <input type="reset" value="Reset" class="btn btn-default">
                    </td>
                </tr>
            </table>
        </form>
        </div>
    </body>
</html>
