<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%-- <%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %> --%>
<html lang="en">


<head>
	<title>About - UOSalsa</title>
	<%@ include file="header2.jsp"%>
	<style>
	.maincolumn h2{
		color: #111;
		font-weight: bold;
		text-align: right;
	}
	.maincolumn h3{
		font: "Open Sans", sans-serif;
		color: black;
		font-weight: 550; /*400 is for normal font and 700 is for bold font*/
		text-align: center;
	}
	.sidecolumn p{
		text-align: justify;
		font: "Open Sans", sans-serif;
	}
	h4 {
	  text-align: right;
      margin: 10px 0 30px 0;
      letter-spacing: 6px;      
      font-size: 20px;
      color: #111;
  	}
  	.button {
    background-color: #ff4d4d;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    font-weight: bold;
    margin: 4px 2px;
    cursor: pointer;
}
	</style>
	
	<script>
	var url = _contextPath+"/contact";
	</script>
</head>

<body>
	<div id="about" >
		<div class="row">
				<div class= "col-sm-2 maincolumn">
					<h2> WHO WE ARE? </h2>
				</div>			
		</div>
		
		<div class="row">
			<div class= "col-sm-2">
			</div>
			<div class= "col-sm-4 maincolumn">
				<h4>We are UNIVERSITY OF OTTAWA based dance club focused on Sharing the passion for
				latin dance.</h4>
			</div>
			<div class= "col-sm-4 sidecolumn">
				<p>Salsa isn't just a dance. It's a lifestyle!
					Everyone knows that footwork, arm styling, and musicality are essential elements of great dancing.
					But ultimately, salsa is about connection.
					By that, we mean connecting with your partner, connecting with the music, and, most importantly, connecting with yourself.
					With out connections, there is no joy in dancing, or in life.
					Here at UOSalsa, we promote an inclusive environment where anyone can learn to salsa.
					We will help you with the basic steps. We will walk you through turn patterns. We will definitely hold your hands when necessary.
					But we won't tell you how to dance.
					It will be up to you to find your own expression, which is, in our opinion, the best part of the journey!
					Are you ready?
				</p>
			</div>
			<div class= "col-sm-2">
			</div>
		</div>
		
		<br>
		<br>
		<br>
		<br>
		
		<div class="row">
			<div class= "col-sm-2">
			</div>
			<div class= "col-sm-4 maincolumn">
				<h4>We love new projects!
					Let's get started.
				</h4>
			</div>
			<div class= "col-sm-4 sidecolumn">
				<p>We are interested in sharing our passion and knowledge about Latin dances,
				   If you have an upcoming Project or an Event then lets "GET STARTED".
				</p>
				<a href= "contact" class="button">GET STARTED!!</a> 
			</div>
			<div class= "col-sm-2">
			</div>
		</div>
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>