<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<% 
try
{
String o="out";
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
String unm=(String)session.getAttribute("username");



out.println("<script>alert('Cart Updated Successfully');window.location='index.jsp';</script>");
}

catch(Exception ex)
{
ex.printStackTrace();	
}


%>
</head>
<body>

</body>
</html>