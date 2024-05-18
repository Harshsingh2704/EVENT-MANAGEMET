<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.* " %>
<%
Connection conn=null;
PreparedStatement pst=null;
String Url="jdbc:mysql://localhost/office";
String Username="root";
String Password="";
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn=DriverManager.getConnection(Url,Username,Password);
	String id=request.getParameter("id");
	String name=request.getParameter("ename");
	String location=request.getParameter("eloc");
	String nopp=request.getParameter("nop");
	String ehnn=request.getParameter("ehn");
	String durr=request.getParameter("dur");
	String payy=request.getParameter("pay");
	String ett=request.getParameter("et");
	String Status= "application in Progress";
	
String Query="update emp set ename=? , eloc=? , nop=? , ehn=? , dur=? , pay=? , et=? , Status=?";
pst=conn.prepareStatement(Query);
pst.setString(1, name);
pst.setString(2, location);
pst.setString(3, nopp);
pst.setString(4, ehnn);
pst.setString(5, durr);
pst.setString(6, payy);
pst.setString(7, ett);
pst.setInt(8, Integer.parseInt(id));
pst.executeUpdate();
response.sendRedirect("display_page.jsp");
}catch(Exception e){
	e.printStackTrace();
}

%>