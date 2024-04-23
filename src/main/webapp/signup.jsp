r<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp Form</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
<div class="outline">
<form action="userServlet" method="post" id="form" class="form">
<div class="form-control">
<label>User Name </label>
<input type="text"  name="name" id="name" placeholder="User Name" >
<small class=".small">Error Message</small>
</div>
<div class="form-control">
<label>Email-Id</label>
<input type="email" name="email" id="email" placeholder="User Email">
<small class=".small">Error Message</small>
</div>
<div class="form-control">
<label>Phone Number</label>
<input type="text" name="phone" id="number" placeholder="Phone Number">
<small class=".small">Error Message</small>
</div>
<div class="form-control">
<label>Password</label>
<input type="password" name="password" id="password" placeholder="Password">
<small class=".small">Error Message</small>
</div>
<div class="form-control">
<label>Confirm Password</label>
<input type="password" name="cpassword" id="cpassword" placeholder="Confirm Password">
<small class=".small">Error Message</small>
</div>
<div class="form-control">
<button type="submit" class="btn" value="final">Submit</button>
</div>
</form>
</div>
</div>




<script src="signup.js"></script>
</body>
</html>