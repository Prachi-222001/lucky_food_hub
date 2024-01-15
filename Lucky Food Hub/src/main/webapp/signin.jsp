<%@include file="header.jsp" %>
<%@page import="java.sql.*" %>

<head>
<style>
body
{
color:white;
}
.clr
{
color:black;
}
</style>
</head>
<section class="contact" id="contact">
 <h1 class="heading"> <span>Sign</span> in </h1>
<form method=post>
<div class="container">


    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
      <input id="pno" type="text" class="form-control" name="pno" placeholder="Enter Your Username" required onvalid="this.setCustomValid('Please Enter Id')" oninput="this.setCustomValiodity(") ">
    </div>

<br>

    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="password" placeholder="Password" >
    </div>
<br>
<div align="right"> 
</div>
<div class="checkbox" align="left" >
      <label><input type="checkbox"> Remember me</label>                   
     </div>

    <br><center>
    <button type="submit" class="btn btn-primary" name="btnsub" id="btnsub">Submit</button>
     <button type="reset" class="btn btn-danger">Reset</button>
     </center>
 </div> 
  </form>
</div>
</div>
<!--
    <form action="">
        <div class="inputBox">
            <input type="text" placeholder="Full Name">
        </div>

        <div class="inputBox">
          <input type="email" placeholder="Email">
        </div>

        <div class="inputBox">
          <input type="number" placeholder="Contact Number">
        </div>

        <div class="inputBox">
          <input type="text" placeholder="">
        </div>

        <div class="inputBox">
          <input type="email" placeholder="Email">
        </div>

        <div class="inputBox">
          <input type="email" placeholder="Email">
        </div>

<div class="inputBox">

<input type="text" placeholder="subject">


    </div>
       
        <input type="submit" value="Submit" class="btn">
    </form>
-->
</section>

<%
if(request.getParameter("btnsub")!=null)
{
String p,unm;

unm=request.getParameter("pno");

p=request.getParameter("password");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
PreparedStatement pst=cn.prepareStatement("select * from custreg where username=? and password=?");
pst.setString(1,unm);
pst.setString(2,p);

ResultSet rs=pst.executeQuery();
if(rs.next())
{
    String fnm;
    fnm=rs.getString("fullname");
	session.setAttribute("username",unm);
	session.setAttribute("fullname",fnm);
	String unm2=(String)session.getAttribute("username");
out.println("<script>alert('Login Successful username="+unm2+"');window.location='user/index.jsp';</script>");
}
else
{
	out.println("<script>alert('Invalid Username Or Password ');</script>");	
}
}
catch(Exception ex)
{
ex.printStackTrace();	
}
}

%>
