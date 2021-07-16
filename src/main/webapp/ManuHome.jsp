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
<title>Manufacturer Home</title>
<style type="text/css">
#manuhome{
	width: 100%;
	padding: 70px 0;
	

}
.manu-box{
	width: 80%;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
	margin: auto;
}
.single-btn{
	flex-basis: 98%;
	text-align: center;
	border-radius: 7px;
	margin-bottom: 20px;
	color: #fff; 
	position: relative;
}
.btn2{
	width: 130px;
	text-decoration: none;
	line-height: 35px;
	display: inline-block;
	background-color: rgb(0, 213, 191);
	font-weight: medium;
	color: white;
	text-align: center;
	vertical-align: middle;
	user-select: none;
	border: 1px solid transparent;
	font-size: 14px;
	opacity:1;
}
.btn2:hover{
	background: white;
	border: 1px solid;
	color: rgb(0, 213, 191);
}
</style>
</head>
<body>


<%
		DBUtil db = new DBUtil();

		String name = (String)session.getAttribute("username");
		if(name == null){
			response.sendRedirect("Home.jsp");
		}
		
		List <Manufacturer> ManuDetails = DBUtil.getManufacturer(name);
		request.setAttribute("ManuDetails", ManuDetails);
		
%>
<section id="feature">
        <div class="title-text">
            <p>HOME</p>
            <h1>WELCOME</h1>
            <h1>${sessionScope.username}</h1>
        </div>
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

	</c:forEach>
</section>	
<section id="manuhome">
	<div class="manu-box">
		<div class="single-btn">
			<a href="Manuaccount.jsp">
			<input class="btn2" type="submit" value="View Profile">
			</a>
		</div>
		<div class="single-btn">
			<c:url value="InsertMedicine.jsp" var="parseID">
			<c:param name="id" value="${id}"/>
			</c:url>
	
			<a href="${parseID}">
			<input class="btn2" type="submit" name="add" value="Add Medicine">
			</a>
		</div>
		<div class="single-btn">
			<c:url value="MedicineDetails.jsp" var="parseID">
			<c:param name="id" value="${id}"/>
		
			</c:url>
	
			<a href="${parseID}">
			<input class="btn2" type="submit" name="submit" value="View Products">
			</a>
		</div>	
		<div class="single-btn">
			<a href="ManuLogout.jsp">
			<input class="btn2" type="submit" value="Logout">
			</a>
		</div>
	</div>	
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