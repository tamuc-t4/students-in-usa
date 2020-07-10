<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Update Form</title>
</head>
<body>
<div>
	<form action="update_college" method="post">
		<fieldset>
		<legend> Update Form</legend>
			<div>
				<label> Id</label>
				<input type ="text" name="id" readonly="readonly" value= "${college.id}">
			</div>
			<div>
				<label>College Name</label>
				<input type ="text" name="collegeName" value= "${college.collegeName}">
			</div>
			<div>
				<label> Email</label>
				<input type ="email" name="email" value= "${college.email}">
			</div>
			<div>
				<label>Mobile Number</label>
				<input type ="number" name="mobileNumber" value= "${college.mobileNumber}">
			</div>
			<div>
				<label> Courses</label>
				<input type ="checkbox" name="courses" value="Arts"
				<c:if test="${fn:contains(college.courses, 'Arts')}">checked</c:if>
				> Arts
				<input type ="checkbox" name="courses" value="Business"
				<c:if test="${fn:contains(college.courses, 'Business')}">checked</c:if>
				> Business
				<input type ="checkbox" name="courses" value="Computer Science"
				<c:if test="${fn:contains(college.courses, 'Computer Science')}">checked</c:if>
				> Computer Science
			</div>
			
			
			<div>
			<label style="font-weight: bold;">Address</label>
			
			<div>
			<label>City Name</label>
			<input type ="text" name="address.cityName" value= "${college.address.cityName}">
			</div>
			<div>
				<label>Country Name</label>
				<input type ="text" name="address.countryName" value= "${college.address.countryName}">
			</div>
			
			</div>
			
			<div>
				<input type="submit" value="Submit">
			</div>
		</fieldset>
	</form>
</div>
</body>
</html>