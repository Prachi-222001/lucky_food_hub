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

</style>
</head>
<form method=post>
<section class="gallery" id="gallery">

  

    <div class="box-container">

        <div class="box">
            <img src="images/inv5.jpg" alt="">
            <h3 class="title"><label>Dark Theme</label></h3>
            <div class="icons">
       
<?php 
$q="select * from price where name='darktheme'";
   $result=mysqli_query($cn,$q);
   if($a=mysqli_fetch_array($result))
   {
  $price=$a['price'];
   echo"  ₹$price<br>";
   }
?>
<input type="radio" id="darktheme" name="inv" value="inv5"><label for="tg" >Click to select</label><br>
            </div>

        </div>

        

        <div class="box">
            <img src="images/inv2.jfif" alt="">
            <h3 class="title"><label>Casual</label></h3>
            <div class="icons">
<?php 
$q="select * from price where name='casual'";
   $result=mysqli_query($cn,$q);
   if($a=mysqli_fetch_array($result))
   {
  $price=$a['price'];
   echo"  ₹$price<br>";
   }
?>
               <input type="radio" id="casual" name="inv" value="inv2"><label for="lawn" >Click to select</label><br>
            </div>
        </div>

        <div class="box">
            <img src="images/inv3.jfif" alt="">
            <h3 class="title"><label>Colourfull</label></h3>
            <div class="icons">
<?php 
$q="select * from price where name='colourfull'";
   $result=mysqli_query($cn,$q);
   if($a=mysqli_fetch_array($result))
   {
  $price=$a['price'];
   echo"  ₹$price<br>";
   }
?>
               <input type="radio" id="colourfull" name="inv" value="inv3"><label for="hall" >Click to select</label><br>
            </div>
        </div>

        
        </div>

        
    </div><br><br><br>
<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
      <textarea id="invdet" type="text" class="form-control" name="invdet" placeholder="Enter the details to be inserted in the invitation card" required onvalid="this.setCustomValid('Please Enter Your Feedback')" oninput="this.setCustomValiodity(")>
    </textarea>
</div>
</section>
<div>
    <br><center>
    <button type="submit" class="btn btn-primary" name="btnsub1" id="btnsub1">Submit</button>
     <button type="reset" class="btn btn-danger">Reset</button>
     </center>
 </div>
 
</form>

<!-- service section ends -->

<!-- about section starts  -->


<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>
<?php
if(isset($_POST['btnsub1']))
{
extract($_POST);
include("connection.php");
$q="update booking set invitationcard='$inv' where phoneno='$phoneno' and bookingid='$bookingid'";
mysqli_query($cn,$q);
$q1="update booking set invitationdetails='$invdet' where phoneno='$phoneno' and bookingid='$bookingid'";
mysqli_query($cn,$q1);
mysqli_close($cn);
echo"<script>window.location='photos3.php'</script>";
}
?>