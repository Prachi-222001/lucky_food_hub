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
<th>Date</th><th>Order Id </th><th>UserName</th><th>Mode</th><th>Amount</th><th>Number</th><th>Address</th><th>Products</th>
</tr>
</thead>
<tbody>

<%

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
	
            String sql="select * from payment"; 
            
            PreparedStatement pst=cn.prepareStatement(sql);
           
 ResultSet rs=pst.executeQuery();
int i=0;
 while(rs.next())
 {
        
            
     String mode,am,num,add,unm2,products,date1,orderid;
     unm2=rs.getString("username");
     mode=rs.getString("mode");
     am=rs.getString("amount");
     num=rs.getString("number");
     add=rs.getString("address");
     products=rs.getString("products");
     date1=rs.getString("date1");
     orderid=rs.getString("orderid");
     out.println("<tr>");
     out.println("<td>"+date1+"</td><td>"+orderid+"</td><td>"+unm2+"</td><td>"+mode+"</td><td>"+am+"</td><td>"+num+"</td><td>"+add+"</td><td>"+products+"</td>");
     out.println("</tr>");
     
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





