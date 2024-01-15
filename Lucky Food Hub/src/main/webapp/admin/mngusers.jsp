<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<%@page import="java.sql.*" %>

<%
String fnm=(String)session.getAttribute("fullname");
String unm=(String)session.getAttribute("username");
%>
<style>
td
{
color:white;
}
th
{
color:red;
}
</style>


<div id=hello style="float:right;width:100%;">

<table class=table>
<thead>
<tr>

        <th>Actions</th>
        <th>Registration Date</th>
        <th>Full Name</th>
        <th>Phone Number</th>
        <th>Email</th>
        <th>Username</th>
       
</tr>
</thead>
<tbody>

<%

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
	
            String sql="select * from custreg"; 
            
            PreparedStatement pst=cn.prepareStatement(sql);
           
 ResultSet rs=pst.executeQuery();
int i=0;
 while(rs.next())
 {
        
            
	 String pno,nm,date1,email,city1;
	 
     nm=rs.getString("fullname");
     pno=rs.getString("phoneno");
     date1=rs.getString("rgdate");
     email=rs.getString("email");
     unm=rs.getString("username");
     
     
	 out.println( "<tr><td><a href='delreg.jsp?unm="+pno+"'>Delete</a></td><td>"+date1+"</td><td>"+nm+"</td><td>"+pno+"</td><td>"+email+"</td><td>"+unm+"</td></tr>");
     
   
     
 }
}

catch(Exception ex)
{
ex.printStackTrace();	
}
%>
</tbody>
</table>
</div>





