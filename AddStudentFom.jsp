<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student</title>
</head>
<body>





<form class = "form-horizontal" role = "form" action="AddStudent" method="post" >

<center><h2>Add Student Form</h2></center>
<div class = "form-group">
      <label for = "Name" class = "col-sm-2 control-label">Name</label>
		
      <div class = "col-sm-9">
         <input type = "text" class = "form-control" id = "Name" placeholder = "Enter Name" name="name" required>
      </div>
   </div>
 
    <div class = "form-group">
      <label for = "Emailid" class = "col-sm-2 control-label">Email id</label>
		
      <div class = "col-sm-9">
         <input type = "text" class = "form-control" id = "Emailid" placeholder = "Enter Email Id" name="email" required>
      </div>
   </div>
   
   <div class = "form-group">
     
     
      <label for = "Sex" class = "col-sm-2 control-label">Sex</label>
      <div class="col-sm-9">
		<div class="checkbox" >
      <label><input type="checkbox" name="sex" value="Male">Male</label>
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="sex" value="Female">Female</label>
    </div>
    </div>
   </div>
   
   
    <div class = "form-group">
      <label for = "Course" class = "col-sm-2 control-label">Course</label>
		
      <div class = "col-sm-9">
        <div class="form-group">
  
  <select class="form-control" id="sel1" name="course">
    <option>JAVA</option>
    <option>.NET</option>
    <option>PHP</option>
    <option>ANDROID</option>
  </select>
</div>
      </div>
   </div>
   
   
   
   <div class = "form-group">
      <label for = "Fee" class = "col-sm-2 control-label">Fee</label>
		
      <div class = "col-sm-9">
         <input type = "text" class = "form-control" id = "UserName" placeholder = "Enter contact" name="fee" required>
      </div>
   </div>
   <div class = "form-group">
      <label for = "Paid" class = "col-sm-2 control-label">Paid</label>
		
      <div class = "col-sm-9">
         <input type = "text" class = "form-control" id = "UserName" placeholder = "Enter contact" name="paid" required>
      </div>
   </div>
   <div class = "form-group">
      <label for = "Due" class = "col-sm-2 control-label">Due</label>
		
      <div class = "col-sm-9">
         <input type = "text" class = "form-control" id = "UserName" placeholder = "Enter contact" name="due" required>
      </div>
   </div>
    <div class = "form-group">
      <label for = "Address" class = "col-sm-2 control-label">Address</label>
		
      <div class = "col-sm-9">
         <input type = "text" class = "form-control" id = "UserName" placeholder = "Enter Address" name="address" required>
      </div>
   </div>
   
   <div class = "form-group">
      <label for = "Contact" class = "col-sm-2 control-label">Contact</label>
		
      <div class = "col-sm-9">
         <input type = "text" class = "form-control" id = "UserName" placeholder = "Enter contact" name="contact" required>
      </div>
   </div>
  
<center>
   <input type="submit" value="Add Student" class = "btn btn-success" name="Register"/>
   <input type="reset" value="Reset"  class = "btn btn-danger"/>
</center>
</form>

<br><br>
</body>
</html>