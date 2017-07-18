<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">


<head>
	<title>Events - UOSalsa</title>
	<%@ include file="header2.jsp"%>
	<%-- <%@ include file="header4.jsp"%> --%>
	<style>
	.eventpicture img{
	    max-width: 100%;
	    max-height: 100%;
	    height: auto;
	}
	
	h3 {
	    font-weight: bold;
	}
	
	html{
    	height: 100%;
	}
	
	body {
		height: 100%;
		/* background-color: #4d4d4d; */
		/* background-image: url(images/event/events_background.jpeg); */ /*You will specify your image path here.*/
		
		-moz-background-size: cover;
		-webkit-background-size: cover;
		background-size: cover;
		background-position: top center !important;
		background-repeat: no-repeat !important;
		background-attachment: fixed;
		/* -webkit-filter: grayscale(90%);
	    filter: grayscale(90%); /* make all photos black and white */  */
	}
	
	body.grayscale {
	 	background: url(images/event/stage_background_design.jpg);
        -moz-filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'grayscale\'><feColorMatrix type=\'matrix\' values=\'0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0 0 0 1 0\'/></filter></svg>#grayscale");
        -o-filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'grayscale\'><feColorMatrix type=\'matrix\' values=\'0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0 0 0 1 0\'/></filter></svg>#grayscale");
        -webkit-filter: grayscale(100%);
        filter: gray;
        filter: url("data:image/svg+xml;utf8,<svg xmlns=\'http://www.w3.org/2000/svg\'><filter id=\'grayscale\'><feColorMatrix type=\'matrix\' values=\'0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0.3333 0.3333 0.3333 0 0 0 0 0 1 0\'/></filter></svg>#grayscale");
	}
	
	#event {
	    min-height: 100%;
	    height: auto !important;
	    height: 100%;
	    margin: 0 auto -60px;
	}
	</style>
	
	
</head>

<body> <!-- background="images/event/stage_background_design.jpg" -->

	<br>
	<br>
	<br>
	<br>
	<div id="event" >
		<div class="row">
			<div class= "col-sm-2 ">
			</div>
			<div class= "col-sm-4 eventpicture" >
				<img src="images/event/event1.jpg" alt="EventName" >
			</div>
			<div class= "col-sm-4">
				<h3>MONDAY NIGHTS!!</h3>
				<p>Beginner Bachata: 6:00pm to 7:00pm</p>
				<p>Beginner Salsa: 7:30pm to 9:00pm</p>
				<p>Social dance: 9pm to 10:30pm</p>
				<p>Price:</p>
				<p>Beginner Bachata or Salsa: $5</p>
				<p>Beginner Bachata and Salsa: $8</p>
				<p>Semester Pass: $70 (Early Bird)</p>
				<p>Semester Pass: $90 (Regular)</p>
			</div>
			<div class= "col-sm-2">
			</div>
		</div>
		<br>
		<br>
		<br>
		<br>
		<!-- <div class="row">
			<div class= "col-sm-2 ">
			</div>
			<div class= "col-sm-4">
				<h3>MONDAY NIGHTS!!</h3>
				<p>Beginner Bachata: 6:00pm to 7:00pm</p>
				<p>Beginner Salsa: 7:30pm to 9:00pm</p>
				<p>Social dance: 9pm to 10:30pm</p>
			</div>
			<div class= "col-sm-4 eventpicture">
				<img src="images/event/event1.jpg" alt="EventName">
			</div>
			<div class= "col-sm-2">
			</div>
		</div> -->
		
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>