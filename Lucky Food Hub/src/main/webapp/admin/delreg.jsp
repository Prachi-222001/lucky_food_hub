<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.*,java.util.*" %>
<%
try
{ 
	String id=request.getParameter("unm");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
	Statement st=cn.createStatement();
	st.executeUpdate("delete from custreg where phoneno="+id);
	
	out.println("<script>alert('Record deleted');window.location='mngusers.jsp';</script>");
}
catch(Exception ex)
{
ex.printStackTrace();	
}
%>
    