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
<title>Update Price</title>
<style type="text/css">
	.row{
		background: white;
		border-radius: 30px;
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
</style>
<script type="text/javascript">
	window.history.forward();
	function noBack() { window.history.forward(); }
</script>
</head>
<body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
<%

	String name = (String)session.getAttribute("username");
	if(name == null){
		response.sendRedirect("Home.jsp");
}

%>
<section class="addMed">
	<div class="title-text">
            <p>Update</p>
            <h1>Update Price</h1>
    </div>
	<section class="form my-4 mx-5">
		<div class= "container">
    		<div class="row no-gutters">
    			<div class="col-lg-7 px-5 pt-3">
					<c:forEach var="Med" items="${showmed}">

						<c:set var="id" value="${Med.id}"/>
						<c:set var="mname" value="${Med.medName}"/>
						<c:set var="form" value="${Med.form}"/>
						<c:set var="str" value="${Med.strength}"/>
						<c:set var="pr" value="${Med.price}"/>



					<form action="update" method="post">
						<input type="hidden" name=id value="${Med.id}" readonly><br>
						<input type="hidden" name="Mname" value="${Med.medName}" readonly><br>
						<input type="hidden" name="forms" value="${Med.form}" readonly><br>
						<input type="hidden" name="strength" value="${Med.strength}" readonly><br>
						<div class="form-row">
							<div class="col-lg-7">
								New Price : <input type="text" name="price" value="${Med.price}" class="form-control my-3 p-4"><br><br>
							</div>
						</div>
						<div class="form-row">
							<div class="col-lg-7">
								<input type="submit" name="submit" value="Update Price" class="btn1 mt-3">
							</div>
						</div>
				</form>
				</c:forEach>
				</div>
			</div>
		</div>
	</section>
</section>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>