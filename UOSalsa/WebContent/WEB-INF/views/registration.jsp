<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>UoSalsa Registration Form</title>
	
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
	html{
    	height: 100%;
	}
	
	body {
		height: 100%;
	}
	#registration {
	    min-height: 100%;
	    height: auto !important;
	    height: 100%;
	    margin: 0 auto -60px;
	}
	.error {
		color: #ff0000;
	}
	
</style>

</head>

<body>
	<br>
	<br>
	<div class="row" id="registration">
		<div class= "col-sm-12" style="text-align:center; align:middle;">
			<h2 style = "color: #ff4d4d;">Registration Form</h2>
 			<br>
 			<br>
			<form:form method="POST" action="registration" modelAttribute="registrationBean">
				<%-- <form:input type="hidden" path="id" id="id"/> --%>
				<div class="row">
				<div class= "col-sm-4">
				</div>
				<div class= "col-sm-4">
				<table>
					<tr>
						<td><label for="Name">Name: </label> </td>
						<td><input id="username" name="username" placeholder="UserName" type="text" required></td>
				    </tr>
			    	
					<tr>
						<td><label for="Email">Email: </label> </td>
						<%-- <td><form:input path="email" id="email" type="email"/></td> --%>
						<td><input id="email" name="email" placeholder="Email" type="email" required></td>
				    </tr>
			
					<tr>
						<td><label for="Password">Password: </label> </td>
						<td><input id="password" name="password" placeholder="Password" type="password" required></td>
				    </tr>
			
					<tr>
						<td><label for="confirmpassword">Confirm Password: </label> </td>
						<td><input id="confirmpassword" name="confirmpassword" placeholder="Confirm Password" type="password" required></td>
				    </tr>
				</table>	
				</div>
				<div class= "col-sm-4">
				</div>
				</div>
				<br>
				<br>
				<div class="row">
				<div class= "col-sm-4">
				</div>
				<div class= "col-sm-2">
				<input class="button pull-right" type="submit" value="Register"/>
				</div>
				<div class= "col-sm-2">
					
				</div>
				<div class= "col-sm-4">
				</div>
				</div>
				<div class="row">
	        		<div class="col-md-12 form-group">
	          			<div class="pull-center" style = "font-weight: bold !important;">${message}</div>
	       		 	</div>
	      		</div>
			</form:form>
		</div>
	</div>
	<br/>
	<br/>
	<%-- Go back to <a href="<c:url value='/list' />">List of All Employees</a> --%>

<%@ include file="footer.jsp"%>
</body>
</html>