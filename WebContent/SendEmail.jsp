<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Get Well Soon</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    </head>
    <br><br>
    <center><h1>Mail</h1></center><br>
    <body >
     <div class="container">
        <form action="mailProcess.jsp">
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