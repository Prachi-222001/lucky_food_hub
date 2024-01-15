<?php
include('headerservice.php');
session_start();
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
            <img src="images/p1.jpg" alt="">
            <h3 class="title"><label>Portrait</label></h3>
            <div class="icons">
               ₹ 500<br>
 Unlimited Photos<br>
<input type="radio" id="portrait" name="photography" value="p1"><label for="p1" >Click to select</label><br>
            </div>

        </div>

        

        <div class="box">
            <img src="images/p2.jfif" alt="">
            <h3 class="title"><label>Conceptual</label></h3>
            <div class="icons">
 ₹ 500<br>
 Unlimited Photos<br>
               <input type="radio" id="conceptual" name="photography" value="p2"><label for="Conceptual" >Click to select</label><br>
            </div>
        </div>

        <div class="box">
            <img src="images/p3.jfif" alt="">
            <h3 class="title"><label>Documentary</label></h3>
            <div class="icons">
 ₹ 400<br>
 Unlimited Photos<br>
               <input type="radio" id="documentary" name="photography" value="p3"><label for="hall" >Click to select</label><br>
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
$q="update booking set photos='$photography' where phoneno='$phoneno' and bookingid='$bookingid'";
mysqli_query($cn,$q);
mysqli_close($cn);
echo"<script>window.location='selectfood3.php'</script>";
}
?>