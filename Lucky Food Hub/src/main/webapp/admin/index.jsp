
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complete Responsive Event Organizer Website Design Tutorial</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body
{
 background-color: black;
}
.container {
  padding: 16px;
  background-color: black;
  width:70%;
  height:660px;
  border-radius:25px;

  margin-top:20px;
}




</style>
</head>
<body>
    
<!-- header section starts  -->


<!-- header section ends -->

<!-- home section starts  -->

<section class="home" id="home">

    <div class="content">
        
        
    </div>

  
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
PreparedStatement pst=cn.prepareStatement("select * from admin where username=? and password=?");
pst.setString(1,unm);
pst.setString(2,p);

ResultSet rs=pst.executeQuery();
if(rs.next())
{
out.println("<script>alert('Login Successful ');window.location='index2.jsp';</script>");
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
