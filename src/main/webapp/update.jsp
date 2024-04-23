<%@page import="finalProject.EmployeeEdit"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style2.css">
</head>
<body>


<div class="head">
<div class="logo">
<h2>Hr.Management</h2>
</div>
<div class="log">
<img src="user.png" width="30px" height="30px">
</div>
</div>
<div class="cont" >
<div  class="but">

<h1 class="header" style="text-align:center;position:relative;">Registration Form</h1>

<form action="editEmp" method="post">


<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/final", "root", "Aymen@123");
String id=request.getParameter("id");
PreparedStatement pst=con.prepareStatement("select*from hrmanagement where id=?");
pst.setString(1, id);
ResultSet rs=pst.executeQuery();

while(rs.next()){

%>
<input type="hidden" name="id"  value="<%= request.getParameter("id")%>" >
<input type="text" placeholder="First Name" value="<%= rs.getString("firstName")%>" name="firstName" required>
<input type="text" placeholder="Second Name" value="<%= rs.getString("secondName")%>" name="secondName" required>
<input type="email" placeholder="Email-Id" value="<%= rs.getString("emailId")%>" name="emailId" required>
<input type="text" placeholder="Phone Number" value="<%= rs.getString("phoneNumber")%>" name="phoneNumber" required>
<input type="date"  name="dob" value="<%= rs.getString("dob")%>" required>
<input type="text"  name="Address"  value="<%= rs.getString("Address")%>" placeholder="Enter Address" required><br>
<select name="selected" required>
    <option <% if ("Madurai".equals(rs.getString("selected"))) { %> selected <% } %>>Madurai</option>
    <option <% if ("Chennai".equals(rs.getString("selected"))) { %> selected <% } %>>Chennai</option>
    <option <% if ("Bangalore".equals(rs.getString("selected"))) { %> selected <% } %>>Bangalore</option>
    <option <% if ("Kerala".equals(rs.getString("selected"))) { %> selected <% } %>>Kerala</option>
    <option <% if ("Hyderabad".equals(rs.getString("selected"))) { %> selected <% } %>>Hyderabad</option>
</select>

<label style="margin-left:60px;">Gender :</label>
<input type="radio" name="radio" id="male" value="male" <% if ("male".equals(rs.getString("radio"))) { %> checked <% } %> style="width:10%;margin-left:-5px;" required>
<label for="male" style="margin-left:-10px;">Male</label>

<input type="radio" name="radio" id="female" value="female" <% if ("female".equals(rs.getString("radio"))) { %> checked <% } %> style="width:10%;margin-left:-5px;" required>
<label for="female" style="margin-left:-10px;">Female</label><br>


<% 
}
%>


<button type="submit" id="btn" value="editEmp">Submit</button>

</form>
</div>
</div>
</body>
</html>