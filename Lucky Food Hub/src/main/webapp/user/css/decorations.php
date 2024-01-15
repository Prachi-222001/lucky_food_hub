
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
            <img src="images/dec1.jpg" alt="">
            <h3 class="title"><label>Portrait</label></h3>
            <div class="icons">
               
<?php 
$q="select * from decorations where type='dec1'";
   $result=mysqli_query($cn,$q);
   if($a=mysqli_fetch_array($result))
   {
  $price=$a['price'];
   echo"  ₹$price<br>";
   }
?>
<input type="radio" id="dec1" name="decoration" value="dec1"><label for="portrait" >Click to select</label><br>
            </div>

        </div>

        

        <div class="box">
            <img src="images/dec4.jpg" alt="">
            <h3 class="title"><label>Conceptual</label></h3>
            <div class="icons">
<?php 
$q="select * from decorations where type='dec4'";
   $result=mysqli_query($cn,$q);
   if($a=mysqli_fetch_array($result))
   {
  $price=$a['price'];
   echo"  ₹$price<br>";
   }
?>
               <input type="radio" id="dec4" name="decoration" value="dec4"><label for="Conceptual" >Click to select</label><br>
            </div>
        </div>

        <div class="box">
            <img src="images/dec5.jfif" alt="">
            <h3 class="title"><label>Documentary</label></h3>
            <div class="icons">
 <?php 
$q="select * from decorations where type='dec5'";
   $result=mysqli_query($cn,$q);
   if($a=mysqli_fetch_array($result))
   {
  $price=$a['price'];
   echo"  ₹$price<br>";
   }
?>
               <input type="radio" id="dec5" name="decoration" value="dec5"><label for="hall" >Click to select</label><br>
            </div>
        </div>

        
        </div>

        
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
$q="update booking set decoration='$decoration' where phoneno='$phoneno' and bookingid='$bookingid'";
mysqli_query($cn,$q);
mysqli_close($cn);
echo"<script>window.location='invitation3.php'</script>";
}
?>