<?php
include('headerservice.php');
session_start();
include('connection.php');
$fullname=$_SESSION['fullname'];
$phoneno=$_SESSION['phoneno'];
?>
<head>
<style>
body
{
color:white;
}

</style>
</head>

<section class="gallery" id="gallery">

 
 <form method=post>
    <div class="box-container">

        <div class="box">
            <img src="images/terrace.jpg" alt="">
            <h3 class="title"><label>Terrace Garden</label></h3>
            <div class="icons">
               Capacity:200<br>
<?php 
$q="select * from price where name='terracegarden'";
   $result=mysqli_query($cn,$q);
   if($a=mysqli_fetch_array($result))
   {
  $price=$a['price'];
   echo"  ₹$price<br>";
   }
?>
               
<input type="radio" id="tg" name="venues" value="terracegarden" required><label for="tg" >Click to select</label><br>
            </div>

        </div>

        

        <div class="box">
            <img src="images/lawn.jpeg" alt="">
            <h3 class="title"><label>Lawn</label></h3>
            <div class="icons">
              Capacity:500<br>
<?php 
$q="select * from price where name='lawn'";
   $result=mysqli_query($cn,$q);
   if($a=mysqli_fetch_array($result))
   {
  $price=$a['price'];
   echo"  ₹$price<br>";
   }
?>
               <input type="radio" id="lawn" name="venues" value="lawn" required><label for="lawn" >Click to select</label><br>
            </div>
        </div>

        <div class="box">
            <img src="images/hall.jfif" alt="">
            <h3 class="title"><label>Hall</label></h3>
            <div class="icons">
         Capacity:800<br>
<?php 
$q="select * from price where name='hall'";
   $result=mysqli_query($cn,$q);
   if($a=mysqli_fetch_array($result))
   {
  $price=$a['price'];
   echo"  ₹$price<br>";
   }
?>
               <input type="radio" id="hall" name="venues" value="hall" required><label for="hall" >Click to select</label><br>
            </div>
        </div>

        
        
    </div>

</section>
<div>
<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-calender"></i></span>
      <input id="eventdate" type="date" class="form-control" name="eventdate" placeholder="Enter Your Phone number" required onvalid="this.setCustomValid('Please Enter Id')" oninput="this.setCustomValiodity(") >
    </div>

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

$eventdate=$_POST['eventdate'];
   
   $q="select * from booking where eventdate='$eventdate' and venue='$venues'";
   $result=mysqli_query($cn,$q);
   if($a=mysqli_fetch_array($result))
   {
echo"<script>alert('Sorry!! We already have a booking on $eventdate for $venues...Please try for other 2 venues');window.location='service.php'</script>";
   
}   

else
{
$q1="select max(bookingid) as bookingid from booking";

$result=mysqli_query($cn,$q1);
 if($a=mysqli_fetch_array($result))
   {
    $bkngid=$a['bookingid'];
   ++$bkngid;
   $_SESSION['bookingid']=$bkngid;
   }

   $q="insert into booking(eventdate,fullname,phoneno,venue) values('$eventdate','$fullname','$phoneno','$venues')";
   mysqli_query($cn,$q);
mysqli_close($cn);
echo"<script>window.location='decorations3.php'</script>";
}

}

?>