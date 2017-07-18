<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
	<title>UOSalsa - Contact Us</title>
  	<%@ include file="header2.jsp"%>
  	
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
		/* #contact {
			background-color: #262626;
		} */
  	</style>
</head>

<body id="contactUs" data-spy="scroll" data-target=".navbar" data-offset="50">
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
	          <div class="pull-center" style = "font-weight: bold !important;">${message}</div>
	        </div>
	      </div>
	      </form>
	    </div>
	  </div>
	</div>
</div>

<div id="googleMap"></div>

<%@ include file="footer.jsp"%>
</body>
</html>