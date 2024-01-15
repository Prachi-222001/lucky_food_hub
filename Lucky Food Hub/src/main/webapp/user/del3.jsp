
<%@page import="java.sql.*,java.util.*" %>
<%
try
{ 
	String id=request.getParameter("cakeid");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
	Statement st=cn.createStatement();
	st.executeUpdate("delete from cart where cakeid="+id);
	out.println("<script>alert('Record removed from cart');window.location='viewcart.jsp';</script>");
}
catch(Exception ex)
{
ex.printStackTrace();	
}
%>
