<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Client Details</title>
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
<link rel="stylesheet" href="style2.css">


<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
</head>
<body>

<div class="head">
<div class="logo">
<h2>Hr.Management</h2>
</div>
<div class="add">
<img id="bttn" src="add.png" width="30px" height="30px">
</div>
</div>
<div class="cont" id="clo">
<div id="out" class="out">
<img src="close.png" width="18px" id="close">
<h1 class="header" style="text-align:center;position:relative;">Registration Form</h1>

<form action="Hr" method="post">
<input type="text" placeholder="First Name" name="firstName" required>
<input type="text" placeholder="Second Name" name="secondName" required>
<input type="email" placeholder="Email-Id" name="emailId" required>
<input type="text" placeholder="Phone Number" name="phoneNumber" required>
<input type="date"  name="dob" required>
<input type="text"  name="Address" placeholder="Enter Address" required><br>
<select name="selected" required>
<option>Madurai</option>
<option selected>Chennai</option>
<option>Bangalore</option>
<option>Kerala</option>
<option>Hydrabad</option>
</select>
<label style="margin-left:60px;">Gender :</label>
<input type="radio"  name="radio"  id="male" value="male" style="width:10%;margin-left:-5px;" required>
<label for="male" style="margin-left:-10px;">Male</label>
<input type="radio"  name="radio" id="female" value="female" style="width:10%;margin-left:-5px;" required>
<label for="female" style="margin-left:-10px;">Female</label><br>
<button type="submit" id="btn" value="Hr">Submit</button>
</form>
</div>
</div>
<div class="disp table-responsive " style="width:95%;margin-left:40px;">
<table id="example" class="display" style="width:100%">
<thead>
<tr>
<th>ID</th>
<th>FirstName</th>
<th>SecondName</th>
<th>EmailId</th>
<th>PhoneNumber</th>
<th>DOB</th>
<th>Address</th>
<th>City</th>
<th>Gender</th>
<th>Edit</th>
<th>Delete</th>
</tr>
</thead>
<%@ page import="java.sql.*" %>
<%
String idVal = request.getParameter("id");
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/final", "root", "Aymen@123");
	try {
		PreparedStatement pst=conn.prepareStatement("delete from hrmanagement where id=?");
		pst.setString(1,idVal);
		pst.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	

%>
<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/final", "root", "Aymen@123");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM hrmanagement");

    while (rs.next()) {
        int id = rs.getInt("id"); 
%>
<tbody>
        <tr>
            <td><%= rs.getInt(1) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
            <td><%= rs.getString(4) %></td>
            <td><%= rs.getString(5) %></td>
            <td><%= rs.getString(6) %></td>
            <td><%= rs.getString(7) %></td>
            <td><%= rs.getString(8) %></td>
            <td><%= rs.getString(9) %></td>
            <td><a href="update.jsp?id=<%= id %>">Edit</a></td>
            <td><a href="homepage.jsp?id=<%= id %>">Delete</a></td>
        </tr>
        </tbody>
<%
    }
    rs.close();
    st.close();
    con.close();
} catch (Exception e) {
    e.printStackTrace();
}
%>

</table>
</div>

<script src="anime.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script>
new DataTable('#example');
$(document).ready(function(){
	$('example').DataTable();
});
</script>
</body>
</html>