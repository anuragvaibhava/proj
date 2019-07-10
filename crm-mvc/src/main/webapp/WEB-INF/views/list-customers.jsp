<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="<c:url value="/resources/css/style2.css"/>" rel="stylesheet">

</head>
<body  background="<c:url value="/resources/images/back.jpg"/>">
<h2>CRM - Customer Relationship Manager</h2>
<hr color="pink" size="3" />
<img src="<c:url value="/resources/images/img1.png"/>"/>
			<input type="button" value="Add Customer"
				onclick="window.location.href='showForm'; return false;"/>
				<br/><br/>
				<h3>Customer List</h3>
				<table border=1>
						<tr>
							<th>First Name</th>
							<th>Password</th>
							<th>Email</th>
							<th>Action</th>
						</tr>

						<!-- loop over and print our customers -->
						<c:forEach var="tempCustomer" items="${customers}">

							<!-- construct an "update" link with customer id -->
							<c:url var="updateLink" value="/customer/updateForm">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>

							<!-- construct an "delete" link with customer id -->
							<c:url var="deleteLink" value="/customer/delete">
								<c:param name="customerId" value="${tempCustomer.id}" />
							</c:url>

							<tr bgcolor="pink">
								<td>${tempCustomer.firstName}</td>
								<td>${tempCustomer.password}</td>
								<td>${tempCustomer.email}</td>

								<td>
									<!-- display the update link --> <a href="${updateLink}">Update</a>
									| <a href="${deleteLink}"
									onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
								</td>

							</tr>

						</c:forEach>

					</table>
				
</body>
</html>