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
  
  <!-- <script src="js/jquery-1.10.2.min.js"></script> -->

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
        
        <!-- <li><a href="#gallery">GALLERY</a></li> #tour -->
        <li><a href="<c:url value="/gallery" />"><span class="text">GALLERY</span></a></li>
        <li><a href="<c:url value="/about" />"><span class="text">ABOUT US</span></a></li> <!-- #contact -->
        <!-- <li><a href="#contact">CONTACT US</a></li> -->
        <li><a href="<c:url value="/contact" />"><span class="text">CONTACT US</span></a></li> <!-- #contact -->
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Merchandise</a></li>
            <li><a href="<c:url value="/extras" />"><span class="text">EXTRAS</span></a></li>
            <li><a href="<c:url value="/adminLogin19900" />">Admin Login</a></li>
          </ul>
        </li>
        <!-- <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li> -->
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
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/homepage/dance1.jpg" alt="dance1" style = "width:1920px; height: 700px">
        <div class="carousel-caption">
		<a href="#signUp" data-toggle="collapse" id="show_button">
		 <button class="button" type="submit">Sign Up</button>   
		</a>
		
		<div class="pull-center" style = "font-weight: bold !important;">${message}</div>
		<div id= "signUp" class="collapse">
		 	<form name="frm2" method="post" action="signUp">
		 		 <div class="row">
		 		 	<div class="col-sm-4 form-group"></div>
		 			<div class="col-sm-4 form-group">
		    			<input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
		    		</div>
		    		<div class="col-sm-4 form-group"></div>
		    	</div>
		    
		    	<div class="row">
		    		<div class="col-sm-4 form-group"></div>
		 			<div class="col-sm-4 form-group">
		    			<input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
		   			</div>
		   			<div class="col-sm-4 form-group"></div>
		    	</div>
		    
		    	<div class="row">
		     		<div class="col-sm-4 form-group"></div>
		  			<div class="col-sm-4 form-group">
		     			<button class="button pull-left" type="submit">Send</button>
		 				<a href="home">
		    				<button class="button pull-right" type="submit">Cancel</button>   
		  				</a>
		     			<!-- <button href="show_button" id="cancelButton" class="button pull-right" type="button">Cancel</button> -->
		      		</div>
		      		<div class="col-sm-4 form-group"></div>
		     	</div>     
			</form>
		</div>
		<h1>UOSALSA</h1>
		<p>Salsa isn't just a dance, it's a lifestyle</p>       	
        </div>      
      </div>

      <div class="item">
        <img src="images/homepage/dance5.jpg" alt="dance2" style = "width:1920px; height: 700px">
        <div class="carousel-caption">
		<a href="#signUp1" data-toggle="collapse" id="show_button1">
		 <button class="button" type="submit">Sign Up</button>   
		</a>
		
		<div class="pull-center" style = "font-weight: bold !important;">${message}</div>
		<div id= "signUp1" class="collapse">
		 	<form name="frm2" method="post" action="signUp">
		 		 <div class="row">
		 		 	<div class="col-sm-4 form-group"></div>
		 			<div class="col-sm-4 form-group">
		    			<input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
		    		</div>
		    		<div class="col-sm-4 form-group"></div>
		    	</div>
		    
		    	<div class="row">
		    		<div class="col-sm-4 form-group"></div>
		 			<div class="col-sm-4 form-group">
		    			<input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
		   			</div>
		   			<div class="col-sm-4 form-group"></div>
		    	</div>
		    
		    	<div class="row">
		     		<div class="col-sm-4 form-group"></div>
		  			<div class="col-sm-4 form-group">
		     			<button class="button pull-left" type="submit">Send</button>
		 				<a href="home">
		    				<button class="button pull-right" type="submit">Cancel</button>   
		  				</a>
		     			<!-- <button href="show_button" id="cancelButton" class="button pull-right" type="button">Cancel</button> -->
		      		</div>
		      		<div class="col-sm-4 form-group"></div>
		     	</div>     
			</form>
		</div>
		<h1>UOSALSA</h1>
		<p>Salsa isn't just a dance, it's a lifestyle</p>
        </div>      
      </div>
    
      <div class="item">
        <img src="images/homepage/dance2.jpg" alt="dance3" style = "width:1920px; height: 700px">
        <div class="carousel-caption">
		<a href="#signUp2" data-toggle="collapse" id="show_button2">
		 <button class="button" type="submit">Sign Up</button>   
		</a>
		
		<div class="pull-center" style = "font-weight: bold !important;">${message}</div>
		<div id= "signUp2" class="collapse">
		 	<form name="frm2" method="post" action="signUp">
		 		 <div class="row">
		 		 	<div class="col-sm-4 form-group"></div>
		 			<div class="col-sm-4 form-group">
		    			<input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
		    		</div>
		    		<div class="col-sm-4 form-group"></div>
		    	</div>
		    
		    	<div class="row">
		    		<div class="col-sm-4 form-group"></div>
		 			<div class="col-sm-4 form-group">
		    			<input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
		   			</div>
		   			<div class="col-sm-4 form-group"></div>
		    	</div>
		    
		    	<div class="row">
		     		<div class="col-sm-4 form-group"></div>
		  			<div class="col-sm-4 form-group">
		     			<button class="button pull-left" type="submit">Send</button>
		 				<a href="home">
		    				<button class="button pull-right" type="submit">Cancel</button>   
		  				</a>
		     			<!-- <button href="show_button" id="cancelButton" class="button pull-right" type="button">Cancel</button> -->
		      		</div>
		      		<div class="col-sm-4 form-group"></div>
		     	</div>     
			</form>
		</div>
		<h1>UOSALSA</h1>
		<p>Salsa isn't just a dance, it's a lifestyle</p>
        </div>          
      </div>
      
      <div class="item">
        <img src="images/homepage/dance4.jpg" alt="dance3" style = "width:1920px; height: 700px">
        <div class="carousel-caption">
        	<a href="#signUp3" data-toggle="collapse" id="show_button3">
        	 <button class="button" type="submit">Sign Up</button>   
      		</a>
      		<div class="pull-center" style = "font-weight: bold !important;">${message}</div>
      		<div id="signUp3" class="collapse">
	        	<form name="frm2" method="post" action="signUp">
	        		 <div class="row">
	        		 	<div class="col-sm-4 form-group"></div>
	        			<div class="col-sm-4 form-group">
			         		<input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
			         	</div>
			         	<div class="col-sm-4 form-group"></div>
			         </div>
			         
			         <div class="row">
			         	<div class="col-sm-4 form-group"></div>
	        			<div class="col-sm-4 form-group">
			         		<input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
			        	</div>
			        	<div class="col-sm-4 form-group"></div>
			         </div>
			         
			         <button class="button" type="submit">Send</button>
			         
			    </form>
      		</div>
          	<h1>UOSALSA</h1>
          	<p>Salsa isn't just a dance, it's a lifestyle</p>
        </div>          
      </div>
      
      <div class="item">
        <img src="images/homepage/dance3.jpg" alt="dance3" style = "width:1920px; height: 700px">
        <div class="carousel-caption">
        	<a href="#signUp4" data-toggle="collapse" id="show_button4">
        	 <button class="button" type="submit">Sign Up</button>   
      		</a>
      		<div class="pull-center" style = "font-weight: bold !important;">${message}</div>
      		<div id="signUp4" class="collapse">
	        	<form name="frm2" method="post" action="signUp">
	        		 <div class="row">
	        		 	<div class="col-sm-4 form-group"></div>
	        			<div class="col-sm-4 form-group">
			         		<input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
			         	</div>
			         	<div class="col-sm-4 form-group"></div>
			         </div>
			         
			         <div class="row">
			         	<div class="col-sm-4 form-group"></div>
	        			<div class="col-sm-4 form-group">
			         		<input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
			        	</div>
			        	<div class="col-sm-4 form-group"></div>
			         </div>
			         
			         <button class="button" type="submit">Send</button>
			         
			    </form>
      		</div>
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

<script type="text/javascript">

		var button = document.getElementById('show_button');
	    button.addEventListener('click',hideshow,true);
	    
	    function hideshow() {
	        document.getElementById('show_button').style.display = 'block'; 
	        this.style.display = 'none';
	    } 
	    
	    var button1 = document.getElementById('show_button1');
	    button1.addEventListener('click',hideshow1,true);
	    
	    function hideshow1() {
	        document.getElementById('show_button1').style.display = 'block'; 
	        this.style.display = 'none';
	    } 
	    
	    var button2 = document.getElementById('show_button2');
	    button1.addEventListener('click',hideshow2,true);
	    
	    function hideshow2() {
	        document.getElementById('show_button2').style.display = 'block'; 
	        this.style.display = 'none';
	    } 
	    
	    var button3 = document.getElementById('show_button3');
	    button3.addEventListener('click',hideshow3,true);
	    
	    function hideshow3() {
	        document.getElementById('show_button3').style.display = 'block'; 
	        this.style.display = 'none';
	    } 
	    
	    var button4 = document.getElementById('show_button4');
	    button4.addEventListener('click',hideshow4,true);
	    
	    function hideshow() {
	        document.getElementById('show_button4').style.display = 'block'; 
	        this.style.display = 'none';
	    } 
</script>


</body>
</html>