<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- <%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> --%>
<html lang="en">

<head>
  <%@ include file="header.jsp"%>
  
  <style>
  	.button {
	      padding: 10px 20px;
	      background-color: #ff4d4d ;
	      color: #f1f1f1;
	      border-radius: none;
	      transition: .2s;
	      font-weight: bold;
	}
	.button:hover, .button:focus {
	      border: none; /*1px solid #333;*/
	      background-color: #f1f1f1;
	      color: #ff4d4d;
	}
  </style>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

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
<!-- Container (Contact Section) -->
<div id="contact" class="bg-1 ">
	<div class="container">
	  <h3 class="text-center">CONTACT</h3>
	  <p class="text-center"><em>We love to hear back from YOU!</em></p>
	
	  <div class="row">
	    <div class="col-md-4">
	      <p>Queries? Drop a note.</p>
	      <p><span class="glyphicon glyphicon-map-marker"></span>
	      	JOCK TURCOT UNIVERSITY CENTRE (UCU)
			85 University Private
			Ottawa, ON K1N 9A7
		  </p>
	      <p><span class="glyphicon glyphicon-phone"></span>Phone: +1 6134135788</p>
	      <p><span class="glyphicon glyphicon-envelope"></span>Email: uosalsa@gmail.com</p>
	    </div>
	    <div class="col-md-8">
	      <form name="frm1" method="post" action="contactUs">
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
	          <button class="button pull-right" type="submit">Send</button>
	        </div>
	      </div>
	      <div class="row">
	        <div class="col-md-12 form-group">
	          <div class="pull-center">${message}</div>
	        </div>
	      </div>
	      </form>
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

<%@ include file="footer.jsp"%>
</body>
</html>
