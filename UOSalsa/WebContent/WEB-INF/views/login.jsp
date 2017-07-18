<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">


<head>
	<title>Events - UOSalsa</title>
	<%@ include file="header4.jsp"%>
	<style>
	html{
    	height: 100%;
	}
	
	body {
		height: 100%;
	}
	
	#login {
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
	<form:form id="loginForm" method="post" action="login11" >
	
	<div class="row">
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="username" name="username" placeholder="UserName" type="text" required>
	        </div>
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="password" name="password" placeholder="Password" type="password" required>
	        </div>
	      </div>
	      
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
	
	
	<%-- 	<form:label path="username">Enter your user-name</form:label> 
		<form:input id="username" name="username" path="username" /><br>
		<form:label path="username">Please enter your password</form:label>
		<form:password id="password" name="password" path="password" /><br>
		<input type="submit" value="Submit" />  --%>
	</form:form>
	
	<%@ include file="footer.jsp"%>
</body>
</html>