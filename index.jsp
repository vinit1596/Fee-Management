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
<title>Fee Management</title>
</head>
<body>
<script src = "//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<jsp:include page="header.jsp"></jsp:include>

<br><br><br><br><br><br><br><br>

<div class="container" >
<div class="row" >

<div class="col-md-6" >

<center><h2>&nbsp&nbsp&nbspAdministration</h2>
<form action="AdminLogin" method="post">
<table>
<tr><td>
<%
if(AdminLogin.adminwrong==1)
{
%>
<center><b><p>Invalid credentials</p></b></center>
<% 	
AdminLogin.adminwrong=0;
}
%>
</td></tr>
<tr><td>Email:</td><td><input type="email" name="email" required/></td></tr>
<tr><td><br></tr>
<tr><td>Password:</td><td><input type="password" name="password" required/></td></tr>
<tr><td><br></tr>
<tr><td colspan="2" align="center"><input type="submit" class="btn btn-default" value="Login"/></td></tr>
</table>
</form>
</center>
</div>

<div class="col-md-6">
<h2>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspAccountant</h2>
<form action="AccountantLogin" method="post">
<table>
<tr><td>
<%
if(AccountantLogin.wrongacc==1)
{
%>
<center><b><p>Invalid credentials</p></b></center>
<% 	
AccountantLogin.wrongacc=0;
}
%>
</td></tr>
<tr><td>Email:</td><td><input type="email" name="email" required/></td></tr>
<tr><td><br></tr>
<tr><td>Password:</td><td><input type="password" name="password" required/></td></tr>
<tr><td><br></tr>
<tr><td colspan="2" align="center"><input type="submit" class="btn btn-default" value="Login"/></td></tr>
</table>
</form>
</div>
</div>

</div>
<br><br><br><br><br><br><br><br><br>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>