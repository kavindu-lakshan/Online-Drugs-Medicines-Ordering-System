<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Style1.css">
<link rel="stylesheet" href="Style2.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=New+Tegomin&family=Tinos&family=Volkhov:ital,wght@1,700&display=swap" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script> 
<title>Insert Medicine</title>
<style type="text/css">
	.row{
		background: white;
		border-radius: 30px;
	}
	.img{
		border-top-left-radius: 30px;
		border-bottom-left-radius: 30px;
	}
	.btn1{
		border: none;
		outline: none;
		height: 50px;
		width: 100%;
		background-color:rgb(0, 213, 191);
		color: white;
		border-radius: 4px;
		font-weight: bold;
	}
	.btn1:hover{
		background: white;
		border: 1px solid;
		color: rgb(0, 213, 191);
	}
	option{
		color:black;
	}
</style>
</head>
<body>
<%
	String name = (String)session.getAttribute("username");
	if(name == null){
		response.sendRedirect("Home.jsp");
	}
	String id = request.getParameter("id");//passing the Manufacturer ID

%>

<c:forEach var="Med" items="${MedDetails}">

	<c:set var="id" value="${Med.id}"/>
	<c:set var="mname" value="${Med.medName}"/>
	<c:set var="form" value="${Med.form}"/>
	<c:set var="str" value="${Med.strength}"/>
	<c:set var="pr" value="${Med.price}"/>

</c:forEach>
<section class="addMed">
	<div class="title-text">
            <p>Add</p>
            <h1>Add Drug & Medicine Details</h1>
    </div>
    <section class="form my-4 mx-5">
    <div class= "container">
    	<div class="row no-gutters">
    		<div class="col-lg-5">
    			<img src ="Images/img10.jpg" class="img-fluid" alt="">
    		</div>
    		<div class="col-lg-7 px-5 pt-3">
				<form action="insertmed" method = "post">
					<div class="form-row">
						<div class="col-lg-7">
								Manufacturer ID<input type="text" name=id value="<%=id%>" readonly class="form-control my-3 p-4">
						</div>
					</div>
					<div class="form-row">
						<div class="col-lg-7">
								Medicine Name <input type="text" name="Mname" class="form-control my-3 p-4" required>
						</div>
					</div>
					<div class="form-row">
						<div class="col-lg-7">
								Form <select id="forms" name="forms" class="form-control">
									<option value="Tablet">Tablet</option>
									<option value="Capsules">Capsules</option>
									<option value="Liquid">Liquid</option>
								</select>
						</div>
					</div>
					<div class="form-row">
						<div class="col-lg-7 pt-3 pb-3">
								Strength(mg) <select id="strength" name="strength"  class="form-control">
									<option value="15">15</option>
									<option value="20">20</option>
									<option value="25">25</option>
									<option value="30">30</option>
									<option value="50">50</option>
									<option value="60">60</option>
									<option value="90">90</option>
									<option value="100">100</option>
									<option value="120">120</option>
								</select>
						</div>
					</div>
					<div class="form-row">
						<div class="col-lg-7">
								Price <input type="text" name="price" class="form-control my-3 p-4" required>
						</div>
					</div>
					<div class="form-row">
						<div class="col-lg-7">
								<c:url value="MedicineDetails.jsp" var="parseID">
								<c:param name="id" value="${id}"/>
								
	
								</c:url>
									
								<a href="${parseID}">
								<input type="submit" name="submit" value="Add Medicine" class="btn1 mt-3">
								</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>
</section>
<section id="footer">
        <img src="Images/logo.png" class="footer-img">
        <div class="title-text">
            <p>dosed up</p>
            <h1>Save time, Stay healthy</h1>
        </div>
        <div class="footer-row">
            <div class="footer-left">
                <h1>About Us</h1>
                <p><i class="fa fa-child"></i>Our Mission</p>
                <p><i class="fa fa-comments"></i>Testimonials</p>
            </div>
            <div class="footer-right">
                <h1>Get in Touch</h1>
                <p>No.10, Galle Road, Dehiwala<i class="fa fa-map-marker"></i></p>
                <p>dosedup@gmail.com<i class="fa fa-paper-plane"></i></p>
                <p>0771234567<i class="fa fa-phone"></i></p>
            </div>
        </div>

        <div class="social-links">
            <i class="fa fa-facebook"></i>
            <i class="fa fa-instagram"></i>
            <i class="fa fa-twitter"></i>
            <i class="fa fa-youtube-play"></i>
            <p>Copyright © dosedup.com. All Rights Reserved.</p>
        </div>
    </section>

 	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>