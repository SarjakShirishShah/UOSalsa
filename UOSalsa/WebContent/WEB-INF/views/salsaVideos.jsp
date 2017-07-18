<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">


<head>
	<title>Gallery - UOSalsa</title>
	<%@ include file="header3.jsp"%>
	
	<style>
	.bg-1{
		background: #f2f2f2;
		color: #2d2d30;
	}
	
	html, body {
    	height: 100%;
	}
	
	#salsaVideos {
	    min-height: 100%;
	    height: auto !important;
	    height: 100%;
	    margin: 0 auto -60px;
	}
	</style>
</head>

<body>
	
	
	<div id="salsaVideos" class="bg-1" >
		<br>
		<br>
		<div class="row">
			<div class= "col-sm-12" style = "text-align: center; font-weight: bold; 
			color: #ff4d4d; font-size: 30px;"> Salsa Videos
			</div>
		</div>
		<div class="row">
			<div class= "col-sm-12" style="text-align: center;" >
				<iframe src="https://www.youtube.com/embed/videoseries?
						list=PLW4MsjwhDhC49MWTPHLufK-ke0o-M45c9&loop=1&fs=1" 
						width="800" height="600" >
				</iframe>
			</div>
		</div>
	</div>

<%@ include file="footer.jsp"%>
</body>
</html>