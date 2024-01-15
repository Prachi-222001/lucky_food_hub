
<%@page import="java.sql.*,java.util.*" %>
<%
try
{ 
	String id=request.getParameter("id");
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
	Statement st=cn.createStatement();
	st.executeUpdate("delete from product where id="+id);
	out.println("<script>alert('Record deleted');window.location='del31.jsp';</script>");
}
catch(Exception ex)
{
ex.printStackTrace();	
}
%>
