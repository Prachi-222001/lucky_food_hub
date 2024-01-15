<%@include file="header.jsp" %>
<%@page import="java.sql.*" %>
<% 
String unm2;
String unm=(String)session.getAttribute("username");
unm2=request.getParameter("username");
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
<h1 align=center> Your Cart</h1>
<div class="row" >
<table class=table>
<thread>
<tr>
<th>Actions</th><th>Product Image</th><th>Name</th><th>Id</th><th>Quantity</th><th>Amount</th>
</tr>
</thead>
<tbody>
<% 
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
	String i="in";
            String sql="select cart.username,cart.cakeid,cart.price,cart.weight,cart.amount,product.image,product.name from cart,product where cart.cakeid=product.id and cart.username=? and cart.cartstatus=?";
            PreparedStatement pst=cn.prepareStatement(sql);
            pst.setString(1,unm);
            pst.setString(2,i);
 ResultSet rs=pst.executeQuery();

 while(rs.next())
 {
        
            
     String cakeid,name,image,weight,amount;
     cakeid=rs.getString("cakeid");
     image=rs.getString("image");
     name=rs.getString("name");
     weight=rs.getString("weight");
     amount=rs.getString("amount");
     out.println("<tr>");
     out.println("<td><a href=del3.jsp?uname="+unm+"&cakeid="+cakeid+">Delete</a></td><td><img src='../images/"+image+"' width=100 height=100></td> <td>"+name+"</td><td>"+cakeid+"</td><td>"+weight+"</td><td>"+amount+"</td>");
     }
 int total=0;
 String allp="";
 String sql2="select amount as sum,name as n1 from cart where username='"+unm+"' and cartstatus='in'";
 PreparedStatement pst2=cn.prepareStatement(sql2);
ResultSet rs2=pst2.executeQuery();
while(rs2.next())
{
int t=rs2.getInt("sum");
total=total+t;
String n=rs2.getString("n1");
allp=allp+n+" , ";
}
out.println("<tr><td></td><td></td><td>"+allp+"</td><td></td><td></td><td><b>"+total+"</b></td><td><b>"+total+"</b></td></tr>");


out.println("</tbody>");
out.println("</table>");
out.println("<center>");
out.println("<a class=\"btn btn-primary\" href='payment.jsp?finalamt="+total+"&allp="+allp+"'>Confirm Order and Proceed to payment</a></center>");

}
catch(Exception ex)
{
ex.printStackTrace();	
}

%>
</div>
