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
	
	#bachataVideos {
	    min-height: 100%;
	    height: auto !important;
	    height: 100%;
	    margin: 0 auto -60px;
	}
	</style>
</head>

<body>
	
	
	<div id="bachataVideos" class="bg-1">
		<br>
		<br>
		<div class="row">
			<div class= "col-sm-12" style = "text-align: center; font-weight: bold; 
			color: #ff4d4d; font-size: 30px;"> Bachata Videos
			</div>
		</div>
		<div class="row">
			<div class= "col-sm-12" style="text-align: center;" >
				<iframe src="https://www.youtube.com/embed/videoseries?
						list=PLW4MsjwhDhC6mFNBX_CALr_gvFR940gZ9&loop=1" frameborder="0" allowfullscreen 
						width="800" height="600">
				</iframe>
			</div>
		</div>
	</div>

<%@ include file="footer.jsp"%>
</body>
</html>