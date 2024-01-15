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
            <img src="images/vegthali.jpg" alt="">
            <h3 class="title"><label>Veg Thali</label></h3>
            <div class="icons">
                
<input type="radio" id="veg" name="food" value="vegthali"><label for="vegthali">Veg thali</label><br>
            </div>

        </div>

        

        <div class="box">
            <img src="images/nonvegthali.webp" alt="">
            <h3 class="title"><label>Non-Veg Thali</label></h3>
            <div class="icons">
               <input type="radio" id="nonveg" name="food" value="nonvegthali"><label for="nonvegthali">Non-Veg thali</label><br>
            </div>
        </div>

        <div class="box">
            <img src="images/starter.jfif" alt="">
            <h3 class="title"><label>Starter</label></h3>
            <div class="icons">
               <input type="radio" id="starter" name="food" value="starter"><label for="starter">Starter</label><br>
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

$q="update booking set food='$food' where phoneno='$phoneno' and bookingid='$bookingid'";
mysqli_query($cn,$q);
mysqli_close($cn);
echo"<script>window.location='cake.php'</script>";
}
?>