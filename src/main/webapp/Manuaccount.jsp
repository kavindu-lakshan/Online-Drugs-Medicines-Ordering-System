<%@page import="java.util.Iterator"%>
<%@page import="test2.Manufacturer"%>
<%@page import="java.util.List"%>
<%@page import="test2.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Style1.css">
<link rel="stylesheet" href="Style2.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=New+Tegomin&family=Tinos&family=Volkhov:ital,wght@1,700&display=swap" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script> 
<title>Manufacturer Account</title>
</head>
<body>
<%
		DBUtil db = new DBUtil();

		String name = (String)session.getAttribute("username");
		if(name == null){
			response.sendRedirect("Home.jsp");
		}
		
		List <Manufacturer> ManuDetails = DBUtil.getManufacturer(name);//calling  getManufacturer function for get the details
		request.setAttribute("ManuDetails", ManuDetails);
		
%>
<section id="welcome">	
	<img src="Images/logo.png" class="footer-img">
	<c:forEach var = "Manu" items ="${ManuDetails}">
	
	<c:set var="id" value="${Manu.id}"/>
	<c:set var="Bname" value="${Manu.brandname}"/>
	<c:set var="Aname" value="${Manu.agentname}"/>
	<c:set var="pnum" value="${Manu.contact}"/>
	<c:set var="email" value="${Manu.email}"/>
	<c:set var="address" value="${Manu.comaddress}"/>
	<c:set var="username" value="${Manu.comusername}"/>
	<c:set var="password" value="${Manu.compw}"/>

	<div class="title-text">
	
            <p>WELCOME</p>
            <h1>${sessionScope.username}</h1>
    </div>
    <div class="manu-box">
    	<div class="manu">
    
			<table>
				<tr>
					<td><h1>Manufacturer ID: </h1></td>
					<td><p>${Manu.id}</p></td>
				</tr>
	
				<tr>
					<td><h1>Agent Name: </h1></td>
					<td><p>${Manu.agentname}</p></td>
				</tr>
				<tr>
					<td><h1>Contact: </h1></td>
					<td><p>${Manu.contact}</p></td>
				</tr>
				<tr>
					<td><h1>Manufacturer Email: </h1></td>
					<td><p>${Manu.email}</p></td>
				</tr>
				<tr>
					<td><h1>Company Address: </h1></td>
					<td><p>${Manu.comaddress}</p></td>
				</tr>
				<tr>
					<td><h1>Account User Name: </h1></td>
					<td><p>${Manu.comusername}</p></td>
				</tr>
	
			</table>
		</div>
		<div class="features-img">
                <img src="Images/img16.jpg">
        </div>
	</div>
	</c:forEach>
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
</body>
</html>