<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>
	<title>Admin - Activities</title>
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
		

		/* tr:first-child{
			font-weight: bold;
			background-color: ;
		} */
		
		body
		{
		    counter-reset: Serial;           /* Set the Serial counter to 0 */
		}
		
		table
		{
			width:100%;
			text-align: left;
		   
		}
		th{
			height: 50px;
		}
		
		th, td {
			padding: 5px;
		}
		
		tr td:first-child:before
		{
		  counter-increment: Serial;      /* Increment the Serial counter */
		  content: counter(Serial); /* Display the counter */
		}
		tr:hover {
			background-color: #ff4d4d;
		}		

  	</style>
  	
  	
</head>

<body id="adminActivities" data-spy="scroll" data-target=".navbar" data-offset="50">
<!-- Container (Contact Section) -->
<div id="contact" class="bg-1 ">
<div class="row">
<div class="col-md-12 form-group">
  <div class="pull-center" style = "font-weight: bold !important;">${message}</div>
  </div>
</div>

	<div class="container">
	  <h3 class="text-center">CONTACT THE SIGNED UP USERS</h3>
	 <!--  <p class="text-center"><em>We love to hear back from YOU!</em></p> -->
	
	  <div class="row">
	    <div class="col-md-4">
	      <p>Promotions? Drop an e-mail to your users.</p>
	      <p><span class="glyphicon glyphicon-map-marker"></span>
	      	JOCK TURCOT UNIVERSITY CENTRE (UCU)
			85 University Private
			Ottawa, ON K1N 9A7
		  </p>
	      <p><span class="glyphicon glyphicon-phone"></span>Phone: +1 6134135788</p>
	      <p><span class="glyphicon glyphicon-envelope"></span>Email: uosalsa@gmail.com</p>
	    </div>
	    <div class="col-md-8">
	      <form name="frm1" method="post" action="adminContact">
	      <div class="row">
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="name" name="name" placeholder="Name" type="text" >
	        </div>
	        <div class="col-sm-6 form-group">
	          <input class="form-control" id="subject" name="subject" placeholder="Subject" type="text" >
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
	          <div class="pull-center" style = "font-weight: bold !important;">${finalMessage}</div>
	        </div>
	      </div>
	      </form>
	    </div>
	  </div>
	  
	  <div id ="row">
		<form name="frm1" method="post" action="listAllusers">
		<div class="col-md-12 form-group">
	          <button class="button" type="submit">Click Here to get list of all Users</button>
	    </div>
	    </form>
	  </div>
	
		<div id ="row">
			
			<div class="col-md-12 ">
				<h2>List of Uosalsa Users</h2>	
				<div style="overflow-x:auto;">
				<table border="1" >
    				<thead>
						<tr>
							<th>SR. NO.</th>
							<th>NAME</th>
							<th>E-MAIL</th>
							<th>JOINING DATE</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${signedUpUsers}" var="signedUpUsers">
							<tr>
								<td></td>
								<td>${signedUpUsers.username}</td>
								<td>${signedUpUsers.email}</td>
								<td></td>
								<td><a href="<c:url value='/deleteSignedUpUser?dId=${signedUpUsers.id}' />">delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				</div>
			</div>
		 	
		</div>
	
	
	</div>
</div>



<%@ include file="footer.jsp"%>
</body>
</html>