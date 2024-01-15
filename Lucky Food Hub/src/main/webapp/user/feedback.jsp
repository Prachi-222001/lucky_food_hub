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
 <h1 class="heading"> <span>Give</span> Feedback </h1>
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
<label for="Seqque">Food Quality:</label>
&nbsp;&nbsp;&nbsp;
<select name="sque" id="sque" style="height:30px" class="clr">
  <option value="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;------Select------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
  <option value="Best">&nbsp;&nbsp;Best</option>
  <option value="Very Tasty">&nbsp;Very Tasty</option>
  <option value="Average">&nbsp;Average</option>
  <option value="Not Good">&nbsp;Not Good</option>
</select>
</div>
<br>

<div class="input-group">
<label for="Seqque">Service:</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="sans" id="sans" style="height:30px" class="clr">
  <option value="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;------Select------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
  <option value="Very Good">&nbsp;&nbsp;Very Good</option>
  <option value="Very Bad">&nbsp;Very Bad</option>
  <option value="Average">&nbsp;Average</option>
</select>
</div>
<br>
<center>
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
sq=request.getParameter("sque");
sa=request.getParameter("sans");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
PreparedStatement pst=cn.prepareStatement("insert into feedback values(?,?,?,?)");
pst.setString(1,rd);
pst.setString(2,name);
pst.setString(3,sq);
pst.setString(4,sa);
pst.executeUpdate();
out.println("<script>alert('Thank You for your valuable Feedback');window.location='index.jsp';</script>");
}
catch(Exception ex)
{
ex.printStackTrace();	
}
}

%>
