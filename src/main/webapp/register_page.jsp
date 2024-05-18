<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>

<title>Event management</title>
</head>
<body>
<div class="container">
<h1 style="text-align: center">Event Management Portal</h1>
<hr>
<marquee scrollamount="10" style="color:red;">Registation will close on 30th may </marquee>
<hr>
<center>
<form action="add.jsp" method="post">
<table border="5">
<tr>
<td>Event Name</td>
<td><input type="text" placeholder="Harsh singh" name="ename" required></td>
</tr>
<tr>
<td>Location</td>
<td><input type="text" placeholder="Asansol" name="eloc" required></td>
</tr>
<tr>
<td>Number of Participants</td>
<td><select name="nop" required>
		<option>1</option>
		<option>2</option>
		<option>3</option>
		<option>4</option>
		<option>5</option>
		<option>6</option>
</select>
</td>
</tr>
<tr>
<td>Event Holder Name</td>
<td><input type="text" placeholder="Ansh" name="ehn" required></td>
</tr>
<tr>
<td>Duration(In Hours)</td>
<td><select name="dur" required>
		<option>3</option>
		<option>6</option>
		<option>9</option>
</select>
</td>
</tr>
<tr>
<td>Payment</td>
<td><select name="pay" required>
		<option>UPI</option>
		<option>CREDIT CARD</option>
		<option>DEBIT CARD</option>

</select>
</td>
</tr>
<tr>
<td>Event Type</td>
<td><select name="et" required>
		<option>TECHNICAL</option>
		<option>NON-TECHNICAL</option>
		</select></td>
</tr>
<tr>
<td><button type="submit">Request</button></td>
<td><button type="Reset">Reset Details</button></td>
</tr>
</table>
</form>
</center>
</div>
</body>
</html>