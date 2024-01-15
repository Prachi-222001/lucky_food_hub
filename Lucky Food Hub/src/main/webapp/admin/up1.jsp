<%@include file="header.jsp" %>
<%@page import="java.sql.*" %>
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
<th>Actions</th><th>Id</th><th>Type</th><th>Subtype</th><th>Name</th><th>Half price</th><th>Full price</th><th>Image</th>
</tr>
</thead>
<tbody>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
	
            String sql="select * from product ";
            PreparedStatement pst=cn.prepareStatement(sql);
 ResultSet rs=pst.executeQuery();
int i=0;
 while(rs.next())
 {
        
            
     String id,name,fullprice,halfprice,image,type,subtype;
     id=rs.getString("id");
     image=rs.getString("image");
     name=rs.getString("name");
     fullprice=rs.getString("fullprice");
     halfprice=rs.getString("halfprice");
     type=rs.getString("type");
     subtype=rs.getString("subtype");
     out.println("<tr>");
     out.println("<td><a href=up.jsp?id="+id+">Update</a></td><td>"+id+"</td><td>"+type+"</td><td>"+subtype+"</td><td>"+name+"</td><td>"+halfprice+"</td><td>"+fullprice+"</td><td><img src='../images/"+image+"' width=100 height=100></td>");
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



