<!DOCTYPE html>
<html lang="en">
<head>
  <title>CovidLanka</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <style>
  .container {
    padding: 80px 120px;
  }
  .person {
    border: 10px solid transparent;
    margin-bottom: 25px;
    width: 80%;
    height: 80%;
    opacity: 0.7;
  }
  .person:hover {
    border-color: #f1f1f1;
  }
  .carousel-inner img {
    -webkit-filter: grayscale(90%);
    filter: grayscale(90%); /* make all photos black and white */ 
    width: 100%; /* Set width to 100% */
    margin: auto;
  }
  .carousel-caption h3 {
    color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
    background: #2d2d30;
    color: #bdbdbd;
    height: 2%;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
    border-top-right-radius: 0;
    border-top-left-radius: 0;
  }
  .list-group-item:last-child {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail p {
    margin-top: 15px;
    color: #555;
  }
  .btn {
    padding: 10px 20px;
    background-color: #333;
    color: #f1f1f1;
    border-radius: 0;
    transition: .2s;
  }
  .btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
  }
  .modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-header, .modal-body {
    padding: 40px 50px;
  }
  body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 40%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 25%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: 10px;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}



.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 40%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */


.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}


/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.3s;
  animation: animatezoom 0.3s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 100px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 80%;
  }
}

  </style>
  <script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">CovidLanka</a>
    </div>
 
    <ul class="nav navbar-nav navbar-right">
      
      <li><a onclick="document.getElementById('id01').style.display='block'"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>



<div id="id01" class="modal">
  
  <form class="modal-content animate" action="login_.jsp" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
      <br>
        
      <button type="submit" class="btn btn-primary">Login</button>
     
   

    
      <button type="button" class="btn btn-default" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
     </div>
   
  </form>
</div>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="image/im1.jpg" alt="New York" width="1200" height="700">
        <div class="carousel-caption">
          <h3>CovidLanka</h3>
          <p>WE CARE FOR YOU</p>
        </div>      
      </div>

      <div class="item">
        <img src="image/im2.jpg" alt="Chicago" width="1200" height="700">
        <div class="carousel-caption">
          <h3>STUDENTS TEMPERATURE MANAGEMENT</h3>
          <p></p>
        </div>      
      </div>
    
      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

<div class="container text-center">
  <h3>CovidLanka</h3>
  <p><em>We care for you!</em></p>
  <p>We have created a temperature management for school students.</p>
  <br>
</div>
<!-- Container (TOUR Section) -->
<div class="bg-1">
  <div class="container text-center">    
  <h3>What To Do</h3>
  <br>
  <div class="row">
    <div class="col-sm-3">
      <img src="image/im3.jpg" class="img-responsive" style="width:100%" alt="Image">
     
    </div>
    <div class="col-sm-3"> 
      <img src="image/im4.jpg" class="img-responsive" style="width:100%" alt="Image">
         
    </div>
    <div class="col-sm-3">
      <div class="well">
       <p>KEEP a safe distance</p>
      </div>
      <div class="well">
       <p>WASH hands often</p>
      </div>
    </div>
    <div class="col-sm-3">
      <div class="well">
       <p>COVER your cough</p>
      </div>
      <div class="well">
       <p>SICK? Call ahead</p>
      </div>
    </div>  
  </div>
  <hr>
</div>
</div>

</body>
</html>
