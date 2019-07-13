<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
</head>
<body>



<div class="user_reg">
            <h1>Welcome To FlyToday</h1>
            <h2>Sign Up It's Free</h2>
            
  <form:form action="signup" method="post" modelAttribute="user">
  <form:hidden path="id" />
  
    <label for="firstName">First Name</label></br>
    <form:input path="firstName" placeholder="First Name" /></br>
    
    <label for="lastName">Last Name</label></br>
    <form:input path="lastName" placeholder="Last Name"/></br>
    
     <label for="gender">Gender</label></br>
    
       <form:input type="checkbox"  path="gender"name="gender" id="male"/>Male
       <form:input type="checkbox"   path="gender" name="gender" id="female"/>Female<br>
       
       <label for="dob">Enter Date of Birth</label>
       <form:input type="date"  path="dob" id="dob"/><br>
       
       
       <label for="email">Email</label></br>
       <form:input path="email" /></br>

     <label for="password">Password</label></br>
    <form:password path="password" /></br> 
    
    <label for="confpassword">Confirm Password</label></br>
    <form:password path="confpassword" /></br> 
    
     <label for="phone">Password</label></br>
    <form:input path="phone" type="number"/></br>  

    <form:button>Submit</form:button>
  </form:form>
</div>

</body>
</html>