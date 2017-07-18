<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

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
  
  <script src="js/jquery-1.10.2.min.js"></script>

  <!-- Jquery UI -->
  <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js" type="text/javascript"></script>
  <style>

  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">UOSalsa</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#myPage">HOME</a></li>
        <!-- <li><a href="#events">EVENTS</a></li> --> <!-- #band -->
        <li><a href="<c:url value="/events" />">EVENTS</a></li>
        
        <li><a href="#gallery">GALLERY</a></li> <!-- #tour -->
        <li><a href="#about">ABOUT</a></li> <!-- #contact -->
        <li><a href="#contact">CONTACT US</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Merchandise</a></li>
            <li><a href="#">Extras</a></li>
            <li><a href="#">Media</a></li>
          </ul>
        </li>
        <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
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
        <img src="images/homepage/dance1.jpg" alt="dance1" style = "width:1920px; height: 920px">
        <div class="carousel-caption">
          <h1>UOSALSA</h1>
          <p>Salsa isn't just a dance, it's a lifestyle</p>
        </div>      
      </div>

      <div class="item">
        <img src="images/homepage/dance2.jpg" alt="dance2" style = "width:1920px; height: 920px">
        <div class="carousel-caption">
          <h1>UOSALSA</h1>
          <p>Salsa isn't just a dance, it's a lifestyle</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="images/homepage/dance3.jpg" alt="dance3" style = "width:1920px; height: 920px">
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

<!-- Container (The Band Section) -->
<div id="band" class="container text-center">
  <h3>THE SALSA CLUB</h3>
  <p><em>We love dance!</em></p>
  <p>Everyone knows that footwork, arm styling, and musicality are essential elements of great dancing.

But ultimately, salsa is about connection.

By that, we mean connecting with your partner, connecting with the music, and, most importantly, connecting with yourself.

With out connections, there is no joy in dancing, or in life.

Here at UOSalsa, we promote an inclusive environment where anyone can learn to salsa.

We will help you with the basic steps. We will walk you through turn patterns. We will definitely hold your hands when necessary.

But we won't tell you how to dance.

It will be up to you to find your own expression, which is, in our opinion, the best part of the journey!

Are you ready?</p>
  <br>
  <div class="row">
    <div class="col-sm-4">
      <p class="text-center"><strong>Sarjak Shah</strong></p><br>
      <a href="#demo" data-toggle="collapse">
        <img src="images/homepage/sarjak_profile_pic.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo" class="collapse">
        <p>Engineer by Profession,</p>
        <p>Dancer by Heart</p>
        <p>Member since 2015</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Anaita Kharwanwala</strong></p><br>
      <a href="#demo2" data-toggle="collapse">
        <img src="images/homepage/anaita_profile_pic.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo2" class="collapse">
        <p>President of UOSalsa</p>
        <p>Loves dancing'</p>
        <p>Member since 2015</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Kristina Borg</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="images/homepage/kristina_profile_pic.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo3" class="collapse">
        <p>Logistic Manager, UOSalsa</p>
        <p>Loves dancing</p>
        <p>Member since 2014</p>
      </div>
    </div>
  </div>
  
  <br>
  <div class="row">
    <div class="col-sm-4">
      <p class="text-center"><strong>Meaghan Conrod</strong></p><br>
      <a href="#demo4" data-toggle="collapse">
        <img src="images/homepage/meaghan_profile_pic.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo4" class="collapse">
        <p>Vice President</p>
        <p>Loves Dancing</p>
        <p>Member since 2015</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Stefania Novoa </strong></p><br>
      <a href="#demo5" data-toggle="collapse">
        <img src="images/homepage/stefania_profile_pic.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo5" class="collapse">
        <p>Public Relations</p>
        <p>Loves dancing'</p>
        <p>Member since 2015</p>
      </div>
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Kelly Esperance</strong></p><br>
      <a href="#demo6" data-toggle="collapse">
        <img src="images/homepage/kelly_profile_pic.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo6" class="collapse">
        <p>Marketing Manager</p>
        <p>Loves dancing</p>
        <p>Member since 2015</p>
      </div>
    </div>
  </div>
  
   <br>
  <div class="row">
  	<div class="col-sm-4">
      
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Linh Nyugen</strong></p><br>
      <a href="#demo7" data-toggle="collapse">
        <img src="images/homepage/linh_profile_pic.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <div id="demo7" class="collapse">
        <p>Treasurer</p>
        <p>Loves Dancing</p>
        <p>Member since 2015</p>
      </div>
    </div>
    <div class="col-sm-4">
      
    </div>
  </div>
</div>
 
<!--  Container (TOUR Section) -->
<!-- <div id="tour" class="bg-1">
  <div class="container">
    <h3 class="text-center">TOUR DATES</h3>
    <p class="text-center">Lorem ipsum we'll play you some music.<br> Remember to book your tickets!</p>
    <ul class="list-group">
      <li class="list-group-item">September <span class="label label-danger">Sold Out!</span></li>
      <li class="list-group-item">October <span class="label label-danger">Sold Out!</span></li> 
      <li class="list-group-item">November <span class="badge">3</span></li> 
    </ul>
    
    <div class="row text-center">
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="paris.jpg" alt="Paris" width="400" height="300">
          <p><strong>Paris</strong></p>
          <p>Friday 27 November 2015</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Buy Tickets</button>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="newyork.jpg" alt="New York" width="400" height="300">
          <p><strong>New York</strong></p>
          <p>Saturday 28 November 2015</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Buy Tickets</button>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="thumbnail">
          <img src="sanfran.jpg" alt="San Francisco" width="400" height="300">
          <p><strong>San Francisco</strong></p>
          <p>Sunday 29 November 2015</p>
          <button class="btn" data-toggle="modal" data-target="#myModal">Buy Tickets</button>
        </div>
      </div>
    </div>
  </div>
  
  Modal
  <div class= "modal fade" id="myModal" role="dialog" > "modal fade"
    <div class="modal-dialog">
    
      Modal content
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Tickets</h4>
        </div>
        <div class="modal-body">
          <form role="form">
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-shopping-cart"></span> Tickets, $23 per person</label>
              <input type="number" class="form-control" id="psw" placeholder="How many?">
            </div>
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Send To</label>
              <input type="text" class="form-control" id="usrname" placeholder="Enter email">
            </div>
              <button type="submit" class="btn btn-block">Pay 
                <span class="glyphicon glyphicon-ok"></span>
              </button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
          <p>Need <a href="#">help?</a></p>
        </div>
      </div>
    </div>
  </div>
</div>
 -->
<!-- Container (Contact Section) -->
<div id="contact" class="bg-1 ">
	<div class="container">
	  <h3 class="text-center">Contact</h3>
	  <p class="text-center"><em>We love to hear back from YOU!</em></p>
	
	  <div class="row">
	    <div class="col-md-4">
	      <p>Queries? Drop a note.</p>
	      <p><span class="glyphicon glyphicon-map-marker"></span>Ottawa, Canada</p>
	      <p><span class="glyphicon glyphicon-phone"></span>Phone: +1 6134135788</p>
	      <p><span class="glyphicon glyphicon-envelope"></span>Email: uosalsa@gmail.com</p>
	    </div>
	    <div class="col-md-8">
	      <div class="row">
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
	        </div>
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
	        </div>
	      </div>
	      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
	      <br>
	      <div class="row">
	        <div class="col-md-12 form-group">
	          <button class="btn pull-right" type="submit">Send</button>
	        </div>
	      </div>
	    </div>
	  </div>
	  <!--  <br>
	 <h3 class="text-center">From The Blog</h3>  
	  <ul class="nav nav-tabs">
	    <li class="active"><a data-toggle="tab" href="#home">Mike</a></li>
	    <li><a data-toggle="tab" href="#menu1">Chandler</a></li>
	    <li><a data-toggle="tab" href="#menu2">Peter</a></li>
	  </ul>
	
	  <div class="tab-content">
	    <div id="home" class="tab-pane fade in active">
	      <h2>Mike Ross, Manager</h2>
	      <p>Man, we've been on the road for some time now. Looking forward to lorem ipsum.</p>
	    </div>
	    <div id="menu1" class="tab-pane fade">
	      <h2>Chandler Bing, Guitarist</h2>
	      <p>Always a pleasure people! Hope you enjoyed it as much as I did. Could I BE.. any more pleased?</p>
	    </div>
	    <div id="menu2" class="tab-pane fade">
	      <h2>Peter Griffin, Bass player</h2>
	      <p>I mean, sometimes I enjoy the show, but other times I enjoy other things.</p>
	    </div>
	  </div> -->
	</div>
</div>

<div id="googleMap"></div>

<!-- Add Google Maps -->
<!-- <script src="https://maps.googleapis.com/maps/api/js"></script> -->
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyClfmDva645PFT2oQy_qnMtINc2w3z0VgE&libraries=geometry,places,directions"></script>
<script>
var myCenter = new google.maps.LatLng(45.4243606, -75.684654);

function initialize() {
var mapProp = {
center:myCenter,

zoom:12,
scrollwheel:true,
draggable:true,
mapTypeId:google.maps.MapTypeId.ROADMAP
};
console.log("my centre: ", myCenter);
var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
position:myCenter,
});

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

<!-- Footer -->
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>Website is made by Sarjak Shah <a href="" data-toggle="tooltip" title="Visit Sarjak's Profile">www.sarjak.com</a></p> 
</footer>

<script>
$(document).ready(function(){
  // Initialize Tooltip
  $('[data-toggle="tooltip"]').tooltip(); 
  
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {

      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
})
</script>

</body>
</html>
