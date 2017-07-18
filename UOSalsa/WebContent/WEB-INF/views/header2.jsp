<html>
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>UOSalsa - University of Ottawa Salsa Club</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <link href="css/main.css" rel="stylesheet" type="text/css">
  
 <!--  <script src="js/jquery-1.10.2.min.js"></script> -->

  <!-- Jquery UI -->
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js" type="text/javascript"></script>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="<c:url value="/home" />">UOSalsa</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<c:url value="/home" />"><span class="text">HOME</span></a></li>
        <li><a href="<c:url value="/events" />"><span class="text">EVENTS</span></a></li>
        
       <!--  <li><a href="#gallery">GALLERY</a></li> #tour -->
        <li><a href="<c:url value="/gallery" />"><span class="text">GALLERY</span></a></li>
        <li><a href="<c:url value="/about" />"><span class="text">ABOUT US</span></a></li>
        <li><a href="<c:url value="/contact" />"><span class="text">CONTACT US</span></a></li> <!-- #contact -->
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Merchandise</a></li>
            <li><a href="#">Extras</a></li>
            <li><a href="<c:url value="/adminLogin19900" />">Admin Login</a></li>
          </ul>
        </li>
       <!--  <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li> -->
      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/homepage/dance1.jpg" alt="dance1" style = "height: 400px">
        <div class="carousel-caption">
          <h1>UOSALSA</h1>
          <p>Salsa isn't just a dance, it's a lifestyle</p>
        </div>      
      </div>

      <div class="item">
        <img src="images/homepage/dance2.jpg" alt="dance2" style = "height: 400px">
        <div class="carousel-caption">
          <h1>UOSALSA</h1>
          <p>Salsa isn't just a dance, it's a lifestyle</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="images/homepage/dance3.jpg" alt="dance3" style = "height: 400px">
        <div class="carousel-caption">
          <h1>UOSALSA</h1>
          <p>Salsa isn't just a dance, it's a lifestyle</p>
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

</body>
</html>