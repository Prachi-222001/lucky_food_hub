<%@include file="header.jsp" %>
<%@page import="java.sql.*" %>


 <div class="swiper-container home-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="../images/vms.jpg" alt=""></div>
            <div class="swiper-slide"><img src="../images/vgn.jpg" alt=""></div>
            <div class="swiper-slide"><img src="../images/vmn.jpg" alt=""></div>
            <div class="swiper-slide"><img src="../images/vscs.jpg" alt=""></div>
            <div class="swiper-slide"><img src="../images/vtr.jpg" alt=""></div>
            <div class="swiper-slide"><img src="../images/vsr.jpg" alt=""></div>
        </div>
    </div>
<h1 class="heading"> You wish ,<span>We Serve</span> </h1>
</section> 

<!-- home section ends -->

<!-- service section starts  -->

<!-- service section ends -->

<!-- about section starts  -->

<section class="about" id="about">

<h1 class="heading"><span>about</span> us </h1>

<div class="row">

    <div class="image">
        <img src="images/about-img.jpg" alt="">
    </div>

    <div class="content">
        <h3>Lucky Food Hub (10 am to 12 pm)</h3>
        <p>Our team understands that serving  tasty and healthy food can be a golden opportunity for us, to show our skills,
and we try to build client loyalty.</p>
        
    </div>

</div>

</section>

<!-- about section ends -->

<!-- gallery section starts  -->


<!-- gallery section ends -->

<!-- price section starts  -->

<!-- price section ends -->

<!-- review section starts  -->

<section class="reivew" id="review"> 
    
    <h1 class="heading">client's <span>review</span></h1>

    <div class="review-slider swiper-container">

        <div class="swiper-wrapper">

             <%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
	
            String sql="select * from feedback";
            PreparedStatement pst=cn.prepareStatement(sql);
 ResultSet rs=pst.executeQuery();
 while(rs.next())
 {
	 String name,rdate,food,service;
     name=rs.getString("name");
     rdate=rs.getString("rdate");
     food=rs.getString("food");
     service=rs.getString("service");
%>
            <div class="swiper-slide box">
                <i class="fas fa-quote-right"></i>
                <div class="user">
                    <img src="images/pic-2.png" alt="">
                    <div class="user-info">
                        <h3><% out.print(name); %></h3>
                        <span>happy clients</span>
                    </div>
                </div>
                <p><% out.print(rdate); %><br><% out.print(food); %><br><% out.print(service); %></p>
            </div>
<%
}
}
        catch(Exception ex)
        {
        ex.printStackTrace();	
        }
%>
 

        </div>

    </div>

</section>


<!-- review section ends -->

<!-- contact section starts  -->



<!-- contact section ends -->

<!-- footer section starts  -->
<section class="footer" id="footer">

    <div class="content">
        
    </div>

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>branches</h3>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> mumbai </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> jogeshwari </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> goregaon </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> navi mumbai </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> andheri </a>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="#"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> service </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> about </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> gallery </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> price </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> reivew </a>
            <a href="#"> <i class="fas fa-arrow-right"></i> contact </a>
        </div>

        <div class="box">
            <h3>contact info</h3>
            <a href="#"> <i class="fas fa-phone"></i> +123-456-7890 </a>
            <a href="#"> <i class="fas fa-phone"></i> +111-222-3333 </a>
            <a href="#"> <i class="fas fa-envelope"></i> abc@gmail.com </a>
            <a href="#"> <i class="fas fa-envelope"></i> abcd@gmail.com </a>
            <a href="#"> <i class="fas fa-map-marker-alt"></i> mumbai, india - 400104 </a>
        </div>

        <div class="box">
            <h3>follow us</h3>
            <a href="#"> <i class="fab fa-facebook-f"></i> facebook </a>
            <a href="#"> <i class="fab fa-twitter"></i> twitter </a>
            <a href="#"> <i class="fab fa-instagram"></i> instagram </a>
            <a href="#"> <i class="fab fa-linkedin"></i> linkedin </a>
        </div>

    </div>

    
</section>

<!-- footer section ends -->

<!-- theme toggler  -->

<div class="theme-toggler">

    <div class="toggle-btn">
        <i class="fas fa-cog"></i>
    </div>

    <h3>choose color</h3>

    <div class="buttons">
        <div class="theme-btn" style="background: #3867d6;"></div>
        <div class="theme-btn" style="background: #f7b731;"></div>
        <div class="theme-btn" style="background: #ff0033;"></div>
        <div class="theme-btn" style="background: #20bf6b;"></div>
        <div class="theme-btn" style="background: #fa8231;"></div>
        <div class="theme-btn" style="background: #FC427B;"></div>
    </div>

</div>





















<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>