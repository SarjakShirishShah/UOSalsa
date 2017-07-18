<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">


<head>
	<title>Gallery - UOSalsa</title>
	<%@ include file="header2.jsp"%>
	<%-- <%@ include file="header3.jsp"%> --%>
	
	<style>
	.col-lg-6 p{
		
		align: middle;
		text-align: center;
		font-weight: bold; 
		font-size: 15px;
		
	}
	
	html, body {
    	height: 100%;
	}
	
	#gallery {
	    min-height: 100%;
	    height: auto !important;
	    height: 100%;
	    margin: 0 auto -60px;
	}
	#gallery img{
		align: middle;
	    width: 600px;
    	height: 400px;
	}
	
	.bg-1{
		background: #f2f2f2;
		color: #2d2d30;
	}
	</style>
</head>
<body >
	<div id="gallery" class="bg-1" >
	<br>
	<br>
		<div class="row">
			<div class= "col-lg-12" style = "text-align: center; font-weight: bold; 
			 font-size: 30px;"> "A PEEK INTO OUR CREATIVE NEST"
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class= "col-lg-12" >
				<div class= "col-lg-6" >
					<p> Timeline Photos</p>
					<p>	<a  href= "timelinePhotos" >
							<img src="images/gallerypage/timeline_pic.jpg" alt="Timeline Photos" title="Timeline Photos" />
						</a>
					</p>
				</div>
				<div class= "col-lg-6" >
					<p> Cover Photos </p>
					<p>	<a  href= "coverPhotos" >
							<img src="images/gallerypage/cover_pic.jpg" alt="Cover Photos" title="Cover Photos" />
						</a>
					</p>
				</div>
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class= "col-lg-12" >
				<div class= "col-lg-6" >
					<p> Bachata Videos </p>
					<p>	<a  href= "bachataVideos" >
							<img src="images/gallerypage/bachata_pic.jpg" alt="Bachata Videos" title="Bachata Videos" />
						</a>
					</p>
				</div>
				<div class= "col-lg-6" >
					<p> Salsa Videos </p>
					<p>	<a  href= "salsaVideos" >
							<img src="images/gallerypage/salsa_pic.jpg" alt="Salsa Videos" title="Salsa Videos" />
						</a>
					</p>
				</div>					
			</div>				
		</div>
		<br>
		<br>
		<br>
		<br>
	</div>
		
<%@ include file="footer.jsp"%>
</body>
</html>