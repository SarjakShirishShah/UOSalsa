<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">


<head>
	<title>Admin Login - UOSalsa</title>
	<%@ include file="header2.jsp"%>
	<style>
	
	.button {
     padding: 10px 20px;
     background-color: #ff4d4d ;
     color: #f1f1f1;
     border-radius: none;
     transition: .2s;
     font-weight: bold;
     width: 100%;
	}
 	.button:hover, .button:focus {
     border: none; /*1px solid #333;*/
     background-color: #f1f1f1;
     color: #ff4d4d;
	}
	html{
    	height: 100%;
	}
	
	body {
		height: 100%;
	}
	
	#adminLogin {
	    min-height: 100%;
	    height: auto !important;
	    height: 100%;
	    margin: 0 auto -60px;
	}
	</style>
	
</head>
<br>
<br>

<body>

<div id="adminLogin">
 	<form:form id="loginForm" method="post" action="executeAdminLogin" >
		 <div class="row">
		 	<div class="col-sm-4 form-group"></div>
			<div class="col-sm-4 form-group">
			<strong style= "color:#ff4d4d;">User Name
   			<input class="form-control" id="username" name="username" placeholder="UserName" type="text" required>
   			</strong>
   			</div>
   		<div class="col-sm-4 form-group"></div>
   	</div>
   
   	<div class="row">
   		<div class="col-sm-4 form-group"></div>
			<div class="col-sm-4 form-group">
			<strong style= "color:#ff4d4d;">Password
   			<input class="form-control" id="password" name="password" placeholder="Password" type="password" required>
  			</strong>
  			</div>
  			<div class="col-sm-4 form-group"></div>
   	</div>
   
   	<div class="row">
    		<div class="col-sm-4 form-group"></div>
 			<div class="col-sm-4 form-group">
    			<button class="button" type="submit">Log In</button>
     		</div>
     		<div class="col-sm-4 form-group"></div>
    	</div>     
	</form:form>
	<br>
	<br>
	<div class="row">
	  <div class="col-sm-4 form-group"></div>
      <div class="col-md-4 form-group">
        <div class="" style = "font-weight: bold !important; color:#ff4d4d; text-align:center; ">${message}</div>
      </div>
      <div class="col-sm-4 form-group"></div>
    </div>
    <div class="row">
      <div class="col-sm-4 form-group"></div>
      <div class="col-md-4 form-group">
        <div class="" style = "font-weight: bold !important; color:#ff4d4d; text-align:center;">${resetPassword}</div>
      </div>
      <div class="col-sm-4 form-group"></div>
    </div>
</div>	
	<%@ include file="footer.jsp"%>
</body>
</html>