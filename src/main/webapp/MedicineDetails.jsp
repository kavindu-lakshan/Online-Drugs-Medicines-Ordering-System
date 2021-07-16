<%@page import="java.util.Iterator"%>
<%@page import="test2.Medicine"%>
<%@page import="java.util.List"%>
<%@page import="test2.DBUtil"%>
<%@page import="test2.Manufacturer"%>
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
<title>Insert title here</title>
<style type="text/css">
	.table-container{
		padding-left: 10%;
		padding-right: 10%;
		margin: 40px auto 0;
		
	}
	.table{
		width:100%;
		border-collapse: collapse;
	}
	.table thead{
		background-color:rgb(0, 213, 191);
	}
	.table thead tr th{
		font-size: 14px;
		font-weight: medium;
		letter-spacing: 0.35px;
		color: white;
		opacity: 1;
		padding: 12px;
		vertical-align: top;
		border: 1px solid #dee2e685;
	}
	.table tbody tr td{
		font-size: 14px;
		letter-spacing: 0.35px;
		font-weight: normal;
		color: black;
		background-color: #dee2e685;
		padding: 8px;
		text-align: center;
		border: 1px solid black;
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
@media (max-width: 768px){
	
	.table thead{
		display: none;
	}
	.table, .table tbody, .table tr, .table td{
		display: block;
		width: 100%;
	}
	.table tr{
		margin-bottom: 15px;
	}
	.table tbody tr td{
		text-align: right;
		padding-left: 50%;
		position: relative;
	}
	.table td:before{
		content: attr(data-label);
		position: absolute;
		left: 0;
		width: 50%;
		padding-left: 15px;
		font-weight: 600;
		font-size: 14px;
		text-align: left;
	}
}
</style>
<script type="text/javascript">

function preback(){window.history.forward();}
setTimeout("preback()",0);
window.onunload = function(){null};

</script>
<script>
    function ConfirmDelete()
    {
      var x = confirm("Are you sure you want to delete?");
      if (x)
          return true;
      else
        return false;
    }
</script>
</head>
<body>


<%
DBUtil db = new DBUtil();

String id = request.getParameter("id");

int convID =Integer.parseInt(id);

int count=1;
List<Medicine> medlist = db.DisplayMedDetails(convID);

Iterator<Medicine> itlist = medlist.iterator();
%>
<section class="addMed">
	<div class="title-text">
            <p>Products Details</p>
            
    </div>
<div class="table-container">
<table class="table">
	<thead>
		<tr>
			<th>No</th>
			<th>Manufacturer ID</th>
			<th>Medicine Name</th>
			<th>Form</th>
			<th>Strength (mg)</th>
			<th>Price ($)</th>
			<th>#</th>
			<th>#</th>
		</tr>
	</thead>

<%

while(itlist.hasNext()){
	Medicine obj = new Medicine();
	
	obj = itlist.next();
%>
			<tbody>
				<tr>
					<td data-label="No"><%= count %></td>
					<td data-label="Manufacturer ID"><%= obj.getId() %></td>
					<td data-label="Medicine ID"><%= obj.getMedName() %></td>
					<td data-label="Form"><%= obj.getForm() %></td>
					<td data-label="Strength"><%= obj.getStrength() %></td>
					<td data-label="Price"><%= obj.getPrice() %></td>
					<td data-label="#"><form action="deletemed" method="post" Onclick="return ConfirmDelete();" >
							<input type="hidden" name="id" value="<%= obj.getId() %>" >
							<input type="hidden" name="mname" value="<%= obj.getMedName() %>" >
							<input type="hidden" name="form" value="<%= obj.getForm() %>" >
							<input type="hidden" name="str" value="<%= obj.getStrength() %>">
							<input class="btn2" type="submit" name="submit" value="Delete" >
					</form></td>
					<td data-label="#"><form action="show" method="post">
							<input type="hidden" name="id" value="<%= obj.getId() %>" >
							<input type="hidden" name="mname" value="<%= obj.getMedName() %>" >
							<input type="hidden" name="form" value="<%= obj.getForm() %>" >
							<input type="hidden" name="str" value="<%= obj.getStrength() %>">
							<input type="hidden" name="pr" value="<%= obj.getPrice() %>">
							<input class="btn2" type="submit" name="submit" value="Update Price" >
					</form></td>
				</tr>
			</tbody>
<%
count++;
}
%>
</table>
</div>
<%
String name = (String)session.getAttribute("username");
if(name == null){
	response.sendRedirect("Home.jsp");
}
List <Manufacturer> ManuDetails = DBUtil.getManufacturer(name);
request.setAttribute("ManuDetails", ManuDetails);

%>
<br>
<div class="btns">
<c:forEach var = "Manu" items ="${ManuDetails}">
	
	<c:set var="id" value="${Manu.id}"/>
	<c:set var="Bname" value="${Manu.brandname}"/>
	<c:set var="Aname" value="${Manu.agentname}"/>
	<c:set var="pnum" value="${Manu.contact}"/>
	<c:set var="email" value="${Manu.email}"/>
	<c:set var="address" value="${Manu.comaddress}"/>
	<c:set var="username" value="${Manu.comusername}"/>
	<c:set var="password" value="${Manu.compw}"/>

<form action = "login" method = "post">
	<input  type ="hidden" name = "username" value="${Manu.comusername}">
	<input  type ="hidden" name = "password" value="${Manu.compw}">
	<input  type = "submit" name = "submit" value = "Back to Home"> 

</form>
</c:forEach>
</div>
</section>


</body>
</html>