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
 <h1 class="heading"> <span>Sign</span> Up </h1>
<form method=post>
<div class="container">

<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
      <input id="rdate" type="date" class="form-control" name="rdate" placeholder="Enter Your BirthDate" required onvalid="this.setCustomValid('Please Enter Your BirthDate')" oninput="this.setCustomValiodity(") >
    </div>
<br>

<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="fnm" type="text" class="form-control" name="fnm" placeholder="Enter Your Full Name" required onvalid="this.setCustomValid('Please Enter Your Full Name')" oninput="this.setCustomValiodity(") >
    </div>
<br>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
      <input id="pno" type="text" class="form-control" name="pno" placeholder="Enter Your Phone number" required onvalid="this.setCustomValid('Please Enter Id')" oninput="this.setCustomValiodity(") pattern="[0-9]{10}">
    </div>

<br>
<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input id="email" type="email" class="form-control" name="email" placeholder="Enter Your Email" required onvalid="this.setCustomValid('Please Enter Your Full Name')" oninput="this.setCustomValiodity(")  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" />
    </div>
<br>

<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input id="city" type="text" class="form-control" name="city" placeholder="Enter Username" required onvalid="this.setCustomValid('Please Enter Your Full Name')" oninput="this.setCustomValiodity(")  />
    </div>

<br>


    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="password" placeholder="Password" required >
    </div>
<br>

 
<div class="input-group">
<label for="Seqque">Security Question:</label>
&nbsp;&nbsp;&nbsp;
<select name="sque" id="sque" style="height:30px" class="clr">
  <option value="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;------Select------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
  <option value="Who is your Favourite Cricketer?">&nbsp;Who is your Favourite Cricketer?&nbsp;</option>
  <option value="Which is your Favourite number?">&nbsp;Which is your Favourite number?</option>
  <option value="What is your 12th Std % ?">&nbsp;What is your 12th Std % ?</option>
</select>
</div>
<br>
<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="sans" type="text" class="form-control" name="sans" placeholder="Enter the answer for the Security Question You selected">
    </div>
    <div>
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
String rd,name,e,pno,sq,sa,p,un;
rd=request.getParameter("rdate");
name=request.getParameter("fnm");
pno=request.getParameter("pno");
e=request.getParameter("email");
un=request.getParameter("city");
p=request.getParameter("password");
sq=request.getParameter("sque");
sa=request.getParameter("sans");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
PreparedStatement pst=cn.prepareStatement("insert into custreg values(?,?,?,?,?,?,?,?)");
pst.setString(1,rd);
pst.setString(2,name);
pst.setString(3,pno);
pst.setString(4,e);
pst.setString(5,un);
pst.setString(6,p);
pst.setString(7,sq);
pst.setString(8,sa);
pst.executeUpdate();
out.println("<script>alert('Registration Successful');window.location='signin.jsp';</script>");
}
catch(Exception ex)
{
ex.printStackTrace();	
}
}

%>
