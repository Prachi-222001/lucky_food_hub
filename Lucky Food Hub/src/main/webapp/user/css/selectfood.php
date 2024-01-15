<?php
include('headerservice.php');
session_start();
include('connection.php');
$fullname=$_SESSION['fullname'];
$phoneno=$_SESSION['phoneno'];
$bookingid=$_SESSION['bookingid'];
?>
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
 <h1 class="heading"> <span>Select your</span> Food Menu </h1>
<form method=post>
<div class="container">
<br>

<div class="input-group">
<label for="Class">Choose Item 1:</label>
&nbsp;&nbsp;&nbsp;
<select name="i1" id="i1" style="height:30px" class="clr">

  <option value="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;------Select------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
<?php
$rs=mysqli_query($cn,"select * from foodmenu where type='starter'");
while($a=mysqli_fetch_array($rs))
{
extract($a);
echo"<option value='$name'>&nbsp;$name&nbsp;</option>";
}
?>
</select>
</div>
<br>

<div class="input-group">
<label for="Class">Choose Item 2:</label>
&nbsp;&nbsp;&nbsp;
<select name="i2" id="i2" style="height:30px" class="clr">

  <option value="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;------Select------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
<?php
$rs=mysqli_query($cn,"select * from foodmenu where type='bhaji'");
while($a=mysqli_fetch_array($rs))
{
extract($a);
echo"<option value='$name'>&nbsp;$name&nbsp;</option>";
}
?>
</select>
</div>
<br>

<div class="input-group">
<label for="Class">Choose Item 3:</label>
&nbsp;&nbsp;&nbsp;
<select name="i3" id="i3" style="height:30px" class="clr">

  <option value="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;------Select------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
<?php
$rs=mysqli_query($cn,"select * from foodmenu where type='bhaji'");
while($a=mysqli_fetch_array($rs))
{
extract($a);
echo"<option value='$name'>&nbsp;$name&nbsp;</option>";
}
?>
</select>
</div>
<br>

<div class="input-group">
<label for="Class">Choose Item 4:</label>
&nbsp;&nbsp;&nbsp;
<select name="i4" id="i4" style="height:30px" class="clr">

  <option value="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;------Select------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
<?php
$rs=mysqli_query($cn,"select * from foodmenu where type='bhaji'");
while($a=mysqli_fetch_array($rs))
{
extract($a);
echo"<option value='$name'>&nbsp;$name&nbsp;</option>";
}
?>
</select>
</div>
<br>

<div class="input-group">
<label for="Class">Choose Item 5:</label>
&nbsp;&nbsp;&nbsp;
<select name="i5" id="i5" style="height:30px" class="clr">

  <option value="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;------Select------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
<?php
$rs=mysqli_query($cn,"select * from foodmenu where type='rice'");
while($a=mysqli_fetch_array($rs))
{
extract($a);
echo"<option value='$name'>&nbsp;$name&nbsp;</option>";
}
?>
</select>
</div>
<br>

<div class="input-group">
<label for="Class">Choose Item 6:</label>
&nbsp;&nbsp;&nbsp;
<select name="i6" id="i6" style="height:30px" class="clr">

  <option value="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;------Select------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
<?php
$rs=mysqli_query($cn,"select * from foodmenu where type='sweet'");
while($a=mysqli_fetch_array($rs))
{
extract($a);
echo"<option value='$name'>&nbsp;$name&nbsp;</option>";
}
?>
</select>
</div>
<br>

<div class="input-group">
<label for="Class">Choose Item 7:</label>
&nbsp;&nbsp;&nbsp;
<select name="i7" id="i7" style="height:30px" class="clr">

  <option value="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;------Select------&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
<?php
$rs=mysqli_query($cn,"select * from foodmenu where type=''");
while($a=mysqli_fetch_array($rs))
{
extract($a);
echo"<option value='$name'>&nbsp;$name&nbsp;</option>";
}
?>
</select>
</div>
<br>
<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="totalperson" type="text" class="form-control" name="totalperson" placeholder="Enter Total Person"  >
    </div>
 <div>

<br>
<?php

if(isset($_POST['btnsub1']))
{
extract($_POST);
$result11=mysqli_query($cn,"select price from foodmenu where name='$i1'");
 
   if($a=mysqli_fetch_array($result11))
   {
  $price1=$a['price'];
  
   }

$result11=mysqli_query($cn,"select price from foodmenu where name='$i2'");
 
   if($a=mysqli_fetch_array($result11))
   {
  $price2=$a['price'];
  
   }

$result11=mysqli_query($cn,"select price from foodmenu where name='$i3'");
 
   if($a=mysqli_fetch_array($result11))
   {
  $price3=$a['price'];
  
   }

$result11=mysqli_query($cn,"select price from foodmenu where name='$i4'");
 
   if($a=mysqli_fetch_array($result11))
   {
  $price4=$a['price'];
  
   }

$result11=mysqli_query($cn,"select price from foodmenu where name='$i5'");
 
   if($a=mysqli_fetch_array($result11))
   {
  $price5=$a['price'];
  
   }

$result11=mysqli_query($cn,"select price from foodmenu where name='$i6'");
 
   if($a=mysqli_fetch_array($result11))
   {
  $price6=$a['price'];
  
   }

$result11=mysqli_query($cn,"select price from foodmenu where name='$i7'");
 
   if($a=mysqli_fetch_array($result11))
   {
  $price7=$a['price'];
  
   }
$perperson=$price1+$price2+$price3+$price4+$price5+$price6+$price7;
$total=$perperson*$totalperson;

echo"Selected Menu:<br> $i1 ,$i2 ,$i3 ,$i4 ,$i5 ,$i6 ,$i7";
echo"<br><br>Per Person: <input type='text' name='perprice' value='$perperson' style='color:black;' readonly/><br><br>";
echo"Total: <input type='text' name='totalprice' value='$total' style='color:black;' readonly/>";
$_SESSION['i1']=$i1;
$_SESSION['i2']=$i2;
$_SESSION['i3']=$i3;
$_SESSION['i4']=$i4;
$_SESSION['i5']=$i5;
$_SESSION['i6']=$i6;
$_SESSION['i7']=$i7;
$_SESSION['tfoodprice']=$total;

}
?>
<br>



 <button type="submit" class="btn btn-primary" name="btnsub1" id="btnsub1" >Calculate</button>

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
<?php
if(isset($_POST['btnsub']))
{
$i1=$_SESSION['i1'];
$i2=$_SESSION['i2'];
$i3=$_SESSION['i3'];
$i4=$_SESSION['i4'];
$i5=$_SESSION['i5'];
$i6=$_SESSION['i6'];
$i7=$_SESSION['i7'];
$total=$_SESSION['tfoodprice'];
include("connection.php");
$q1="update booking set food='$i1 ,$i2 ,$i3 ,$i4 ,$i5 ,$i6 ,$i7' where phoneno='$phoneno' and bookingid='$bookingid'";
mysqli_query($cn,$q1);
$q="insert into foodmenuorder(id,phoneno,fullname,item1,item2,item3,item4,item5,item6,item7,vegprice) values('$bookingid','$phoneno','$fullname','$i1','$i2','$i3','$i4','$i5','$i6','$i7','$total')";
mysqli_query($cn,$q);
mysqli_close($cn);
echo"<script>window.location='selectfood23.php'</script>";
}
?>