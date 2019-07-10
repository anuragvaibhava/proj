<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link href="<c:url value="/resources/css/style2.css" />"
 rel="stylesheet">
</head>
<body>
<body background="<c:url value="/resources/images/back2.jpg"/>"/>
<img src="<c:url value="/resources/images/lti.jpg"/>"/>
<h2 align="center">CRM - Customer Relationship Manager</h2>
			<hr color="pink" size="3" />
<c:url var="travelLink" value="/travel/travelForm">
	<c:param name="customerId" value="${usr.id}" />
</c:url>

<c:url var="leaveLink" value="/leave/leaaveForm">
	<c:param name="customerId" value="${usr.id}" />
</c:url>

<div style="color: red" align="center">
Welcome  Employee ID: ${usr.id} User: ${usr.email} </div>

<a href="${travelLink}">Travel</a><br><br>
<a href="${leaveLink}">Apply Leave</a>

</body>
</html>