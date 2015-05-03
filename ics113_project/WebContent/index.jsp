<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@  page import="java.sql.*"  %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Home</title>
		<link rel="stylesheet" type="text/css" href="home.css"/>
		<link rel="stylesheet" type="text/css" href="offers.css"/>
		<link href='css/bootstrap.css' rel='stylesheet'/>
	</head>
	
	<script type = "text/javascript">
		function validate(){
			var y = document.getElementById("numGuest").value;
		
			
			
		if(isNan(y)){
			alert("ENTER VALID INFORMATION! ");
		}
	}
	</script>
	
	<body>

<% 
Cookie[] c = request.getCookies();

%>  
  
  
		<div class="container" id="v">
		<br><br>
			<div class="row header">
				<div class="col-md-6 col-md-offset-6">
					<h1>El Cacar Beach Resort</h1>
						<p>A Place to Enjoy the Sun! the Sand! and the Beach!</p>
				</div>
			</div>
			<br>
			<div class="row body">
				<div class="col-md-12 minibody">
					<br>
					<!--Sample Accounts-->
					<h4>Member's Profile</h4>
						<h5><b> First Name: </b>
						<br>
						<% out.print(c[2].getValue()); %>
						<br>

						<b>Middle Name:</b><br>
						<% out.print(c[3].getValue()); %>
						<br><br>
						<b>Last Name:</b> <br>
						<% out.print(c[4].getValue()); %>
						<br><br>
						<b>Address:</b><br>
						<% out.print(c[5].getValue()+" "+c[6].getValue()+ " "+ c[7].getValue()+" "+ c[8].getValue()); %>
						<br><br>
						<b>age:</b><br> 
						<% out.print(c[10].getValue()); %>
						<br><br>
						<b>Email Address: </b><br>
						<% out.print(c[11].getValue()); %>
						<br><br>
						<b>Birthday:</b><br>
						<% out.print(c[9].getValue()); %>
						<br><br>
						<b>Last Visit on:</b> <br><br>
						<b>Pending Reservation:</b> <br><br>
				</h5>
					
				<br><br><br>
				
			</div>
		</div>	
		
<!--------About us ------>
		
		<div class="container" id="au">
		<br><br>
			<div class="row header">
				<div class="col-md-6 col-md-offset-6">
					<h1>About Us<h1>
						<p>
						</p>
				</div>
			</div>
			<br>
			<div class="row body">
				<div class="col-md-12 minibody">
					<div class="row">
					
						<div class="col-md-7">
						<br>
						<h3>Take time to relax, and calm your bones</h3>
						<p><br>El Cacar Beach Resort is also one of the beaches 
						in Batangas that has three-pricing system. We have three pricing systems 
						are day visit, night use and overnight visit; so families and group of friends
						 can enjoy their vacation anytime they want. And because of the varied schedules 
						 of their pricing system, visitors can save more money by planning their vacation 
						 and following their chosen specific visit schedule.
<br><br>
We have 1 adult and1  kiddie pool in 
the resort so guests can enjoy both fresh 
and salt water. Videoke and barbeque grills are 
also rendered to guests staying at the resort. 
A sari-sari store can also be found inside El Cacar 
Beach Resort so visitors can enjoy other refreshments aside from the treats provided by the resort.
<br><br>
Located in Barangay Wawa, Nasugbu Batangas, El Cacar Beach 
Resort is just a two-hour drive from Manila; that is why beaches
 in Nasugbu such as this resort are usually chosen as getaway destinations.
  Guests can enjoy the serene ambiance and awe-inspiring beauty of the place
 away of the hustle and bustle of the city, without going very far. And because 
 of its proximity, aside from being popular, beaches in Nasugbu are a practical choice when it comes to family getaways.
</p>
						</div>
						<div class="col-md-4 col-md-offset-1">
						<br>
						<img class = "map" src="img/map.jpg"/>
						</div>
					</div>
				<br><br>
				</div>
			</div>
		</div>
		
		<!-------- ------>
		
		
		
		
		
		
		<!--------FACILITIES ------>
				<div class="container" id="fa">
		<br><br>
			<div class="row header">
				<div class="col-md-6 col-md-offset-6">
					<h1>Facilities<h1>
						
				</div>
			</div>
			<br>
			<div class="row body minibody">
			
			<div  class="col-md-10 col-md-offset-1">
					<center>
					<div class="row">
						<br><h3>Family Rooms and Bahay Kubo</h3>
						<img class = "blur" src="img\rooms\f1.JPG"><img class = "blur" src="img\rooms\f2.JPG"><img class = "blur" src="img\rooms\f3.gif"><img class = "blur" src="img\rooms\f4.JPG">
						<img class = "blur" src="img\rooms\bh1.JPG"><img class = "blur" src="img\rooms\bh2.JPG"><img class = "blur" src="img\rooms\bh3.JPG"><img class = "blur" src="img\rooms\bh4.JPG">
					</div>
					<div class="row">
						<br><h3>Swimming Pool and Beach Front</h3>
						<img class = "blur" src="img\rooms\s1.jpg"><img class = "blur" src="img\rooms\s2.JPG"><img class = "blur" src="img\rooms\s3.JPG"><img class = "blur" src="img\rooms\s4.JPG">
						<img class = "blur" src="img\rooms\b1.JPG"><img class = "blur" src="img\rooms\b2.JPG"><img class = "blur" src="img\rooms\b3.JPG"><img class = "blur" src="img\rooms\b4.JPG">
					</div>
					<div class="row">
						<br><h3>Deluxe Rooms</h3>
						<img class = "blur" src="img\rooms\d1.JPG"><img class = "blur" src="img\rooms\d2.JPG"><img class = "blur" src="img\rooms\d3.JPG"><img class = "blur" src="img\rooms\d5.JPG"><img class = "blur" src="img\rooms\d6.JPG"><img class = "blur" src="img\rooms\d7.JPG"><img class = "blur" src="img\rooms\d8.JPG">
						<br><br><br><br><br>
					</div>
					</div>
					</div>
					</div>
					</div>
					</div>
					</center>
		<!-- end of facilities-->
		
		
		
		<!-- reservations -->
		
		<div class="container" id="r">
		<br><br>
			<div class="row header">
				<div class="col-md-6 col-md-offset-6">
					<h1>Reservation Form<h1>
						<p>
						</p>
				</div>
			</div>
			<br>
			<div class="row body">
				<div class="col-md-12">
					

<form align="justify" action="log">
<br>
<pre class="minibody">
<h2>Reservation Form</h2><br>
<p>Number of Guest/s:   <input type="number" min="0" max="10" placeholder="0" name = "numGuest" required/></p>

<h3>Room Type:                Type of Reservation:</h3>
      <input type="radio" name="type" value="Deluxe" required/>Deluxe            			<input type="radio" name="typer" value="Whole Day" required/>Whole Day
  
      <input type="radio" name="type" value="Suite" required/>Suite             			<input type="radio" name="typer" value="Half Day" required/>Half Day  
 
      <input type="radio" name="type" value="Family" required/>Family            			<input type="radio" name="typer" value="Over Night" required />Over Night  

      <input type="radio" name="type" value="Bahay Kubo" required/>Bahay Kubo

      <input type="radio" name="type" value="Kamalig" required/>Kamalig

<input type="submit" class="btn-success" style="float:right" value="submit"/>
</pre>

<br>
</form>

					
				</div>
			</div>
			
			
			
		</div>
		
		
	<!-- contacts ----->
			<div class="container" id="c">
		
			<div class="row header">
				<div class="col-md-6 col-md-offset-6">
					<h1>Contact Us<h1>
						<p>
						</p>
				</div>
			</div>
			<br>
			<div class="row body">
				<div class="col-md-12 minibody">
					<div class="row">
					
						
						<br><center>
							<h3>Contact Number:<br></h3>
							<h4>0918 - xxx - xxxx [Smart]<br>
								0927 - xxx - xxxx [Globe]<br></h4>
							<h3>Email Address: <br></h3>
							<h4>el_cacar_resort@gmail.com<br></h4>
							<h3>Social Media: <br></h3>
							<h4>Facebook: /elcacarresort<br></h4>
							<h4>Twitter: @elcacarresort</h4>
							<h4>Instagram: @elcacarresort</h4>
							<img src = "img/fb.png"><img src = "img/tw.png"> <img src = "img/ins.png">  
							<h3>Office Hours: <br></h3> 
							<h4>7:00 AM-8:00 PM<br></h4>
							<h5>The resort is exclusive for its members only.<br></h5>
						</center>
							<br>
						</div>
						<div class="col-md-4 col-md-offset-1">
						<br>
						</div>
					</div>
				<br><br><br>
						<br><Br>
						
					</div>
				</div>
			</div>
		</div>



	<!-- contacts----->
	<!-- BUTTONS ----->	
				<div class="navbar navbar-fixed-top">
					<div class="container foot">
						<div class="row">
							
							<div class="col-md-6">
								<div class="row">
							<img src="img\room1.jpg" class="col-md-2 pic"/>
							<h4 class="col-md-7 uname"><% out.print("Welcome  " +c[2].getValue()+ "!"); %></h4>
							
							</div>
							</div>
							
							
							<div class="col-md-6">
								<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
								<li><a href="#v">Profile</a></li>
								<li><a href="#au">About Us</a></li>
								<li><a href="#fa">Facilities</a></li>
								<li><a href="#r">Reservations</a></li>
								<li><a href="#c">Contact Us</a></li>
								
								</ul>
								<button type="button"  class="logout">
								<a href="login.jsp" style="color:black">Log out</a>
								</button>
								</div>
								
							</div>
						</div>
						</div>				
	<script src='js/bootstrap.js'></script>
	</body>
</html>