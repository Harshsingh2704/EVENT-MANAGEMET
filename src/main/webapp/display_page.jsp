<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
</head>
<body>
<center>
<h1 style="color:blue">Display Event details</h1>
<table border="9">
<tr>
<th>Event Name</th>
<th>Event Location</th>
<th>Number of Participants</th>
<th>Event Holder Name</th>
<th>Duration</th>
<th>Payment</th>
<th>Event Type</th>
<th>Application Status</th>
<th>Update</th>
</tr>
<%
Connection conn=null;
PreparedStatement pst=null;
ResultSet rs=null;
String Url="jdbc:mysql://localhost/office";
String Username="root";
String Password="";
String Query="select * from emp";

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn=DriverManager.getConnection(Url,Username,Password);
	pst= conn.prepareStatement(Query);
	rs = pst.executeQuery();
	while( rs.next() ){
		%>
		<tr>
		<td><%=rs.getString("ename") %></td>
		<td><%=rs.getString("eloc") %></td>
		<td><%=rs.getString("nop") %></td>
		<td><%=rs.getString("ehn") %></td>
		<td><%=rs.getString("dur") %></td>
		<td><%=rs.getString("pay") %></td>
		<td><%=rs.getString("et") %></td>
		<td><%=rs.getString("status") %></td>
		<td><a href="upd.jsp?id=<%=rs.getInt("id") %>"><button>Update</button></a></td>
		</tr>
		
<% 		
	}
}catch(Exception e){
	e.printStackTrace();
}
%></table>
<a href="register_page.jsp">Add new Participants</a>
</center>
</body>
</html>