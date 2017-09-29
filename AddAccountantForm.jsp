<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.fm.servlets.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel = "stylesheet">
<link rel="stylesheet" href="resources/bootstrap.min.css"/>
<link rel="stylesheet" href="style.css"/>
<title>Accountant Form</title>
</head>
<body>
<script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<jsp:include page="navadmin.jsp"></jsp:include>




<form class = "form-horizontal" role = "form" action="AddAccountant" method="post" >
<%
if(AddAccountant.sucessadeedaccountant==1)
{
%>
<center><h3>Successfully Added Accountant</h3></center>
<%
AddAccountant.sucessadeedaccountant=0;
}
%>
<center><h2>Registration Form</h2></center>
<div class = "form-group">
      <label for = "Name" class = "col-sm-2 control-label">Name</label>
		
      <div class = "col-sm-9">
         <input type = "text" class = "form-control" id = "Name" placeholder = "Enter Name" name="Name" required>
      </div>
   </div>
   
   <div class = "form-group">
      <label for = "Password" class = "col-sm-2 control-label">Password</label>
		
      <div class = "col-sm-9">
         <input type = "text" class = "form-control" id = "Password" placeholder = "Enter Password" name="Password" required>
      </div>
   </div>
   
    <div class = "form-group">
      <label for = "Emailid" class = "col-sm-2 control-label">Email id</label>
		
      <div class = "col-sm-9">
         <input type = "text" class = "form-control" id = "Emailid" placeholder = "Enter Email Id" name="Emailid" required>
      </div>
   </div>
   
   <div class = "form-group">
      <label for = "Address" class = "col-sm-2 control-label">Address</label>
		
      <div class = "col-sm-9">
         <input type = "text" class = "form-control" id = "UserName" placeholder = "Enter Address" name="Address" required>
      </div>
   </div>
   
   
   <div class = "form-group">
      <label for = "Contact" class = "col-sm-2 control-label">Contact</label>
		
      <div class = "col-sm-9">
         <input type = "text" class = "form-control" id = "UserName" placeholder = "Enter contact" name="Contact" required>
      </div>
   </div>
  
<center>
   <input type="submit" value="Add Accountant" class = "btn btn-success" name="Register"/>
   <input type="reset" value="Reset"  class = "btn btn-danger"/>
</center>
</form>

<br><br><br>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>