<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.* " %>
 <%
Connection conn=null;
PreparedStatement pst=null;
ResultSet rs=null;
String Url="jdbc:mysql://localhost/office";
String Username="root";
String Password="";
String id=request.getParameter("id");
String Query="select * from emp where id=?";
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn=DriverManager.getConnection(Url,Username,Password);
	pst= conn.prepareStatement(Query);
	pst.setInt(1, Integer.parseInt(id));
	rs = pst.executeQuery();
	while( rs.next() ){
	%>
	<h1 style="text-align: center">Deatils updation Form</h1>
	<center>
	<form action="upds.jsp" method="post">
	<table border="5">
	<tr>
	<td>Participant id</td>
	<td><input type="text" name="id" value="<%=rs.getString("id")%>"readonly/ ></td>
	</tr>
	<td>Event Name</td>
<td><input type="text" value="<%=rs.getString("ename")%>" name="ename" required></td>
</tr>
<tr>
<td>Location</td>
<td><input type="text" value="<%=rs.getString("eloc")%>" name="eloc" required></td>
</tr>
<tr>
<td>Number of Participants</td>
<td><select value="<%=rs.getString("nop")%>" required>
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
<td><input type="text" value="<%=rs.getString("ehn")%>" name="ehn" required></td>
</tr>
<tr>
<td>Duration(In Hours)</td>
<td><select value="<%=rs.getString("dur")%>" required>
		<option>3</option>
		<option>6</option>
		<option>9</option>
</select>
</td>
</tr>
<tr>
<td>Payment</td>
<td><select value="<%=rs.getString("pay")%>" required>
		<option>UPI</option>
		<option>CREDIT CARD</option>
		<option>DEBIT CARD</option>

</select>
</td>
</tr>
<tr>
<td>Event Type</td>
<td><select value="<%=rs.getString("et")%>" required>
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
<%
}
}catch(Exception e){
	e.printStackTrace();
}
%>



%>