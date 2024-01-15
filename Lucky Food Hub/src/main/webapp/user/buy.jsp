<%@include file="header.jsp" %>
<%@page import="java.sql.*" %>
<%

String id="",p;
p=request.getParameter("price");
id=request.getParameter("cakeid");
String unm=(String)session.getAttribute("username");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
	
            String sql="select * from product where id="+id;
            PreparedStatement pst=cn.prepareStatement(sql);
 ResultSet rs=pst.executeQuery();
int i=0;
 if(rs.next())
 {
        
            
     String name,fullprice,halfprice,image,type,subtype;
     
     image=rs.getString("image");
     name=rs.getString("name");
     fullprice=rs.getString("fullprice");
     halfprice=rs.getString("halfprice");
     type=rs.getString("type");
     subtype=rs.getString("subtype");
     
 



%>

<h1 align=center>Order Details</h1>
<div class="row">
<form id=frmreg method="post" name="myForm">
  <div class="input-group">
<%
out.println("<center><img src=\"../images/"+image+"\" width=200 height=200></center></div>");
out.println("<h3>"+name+"</h3>");
%>
<br>

  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-flag"></i></span>
    <input ng-model="address" id="opt" name="opt" type="text" class="form-control" name="cakeid" placeholder="Product id" value="<% out.println(id); %>" required readonly>

  </div>
<br>

<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-shopping-cart"></i></span>
<select id=mode name=mode class="form-control" oninvalid="this.setCustomValidity('please select the payment mode')" oninput="this.setCustomValidity('')" required>
<option>-select payment mode--</option>
<option value="COD">Cash on Delivery</option>

</select>
</div>
<br>
<div class= "input-group">
<span class-"input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
<input ng-model="address" id="num" type="text" class="form-control" name="num"placeholder="mobile number" oninvalid="this.setCustomValidity('please enter valid mobile number')" oninput="this.setCustomValidity('')" required>
</div>
<div class= "input-group">
<span class-"input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
<input ng-model="address" id="adda" type="text" class="form-control" name="adda" placeholder="address" oninvalid="this.setCustomValidity('please enter valid address')" oninput="this.setCustomValidity('')" required>
</div>


<br>

  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
    <input ng-model="address" id="price" type="text" class="form-control" name="price" placeholder="Price" value="<% out.println(fullprice); %>" required readonly>


  </div>
<br>

  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
    <input ng-model="address" id="price1" type="text" class="form-control" name="price1" placeholder="Price" value="<% out.println(halfprice); %>" required readonly>

  </div>

<br>

  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-shopping-cart"></i></span>
    <select id=wt name=wt class="form-control" oninvalid="this.setCustomValidity('please select the weight of cake')" oninput="this.setCustomValidity('')" required>
<option>--Select Quantity--</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</div>

<br>
  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-shopping-cart"></i></span>
    <select id=wt1 name=wt1 onchange="cal2()" class="form-control" oninvalid="this.setCustomValidity('please select the weight of cake')" oninput="this.setCustomValidity('')" required>
<option>--Select Quantity--</option>
<option value="halfprice">Half</option>
<option value="fullprice">Full</option>
</select>


<script>
function cal2()
{
  var p1,p,w,a;
 p1=document.getElementById("price1").value;
 p=document.getElementById("price").value;
 w=document.getElementById("wt").value;
w1=document.getElementById("wt1").value;
if(w1=="halfprice")
{
a=p1*w;
}
else
{
a=p*w;
}
document.getElementById("amt").value=a;
}
</script>
</div>
<br>
  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
    <input ng-model="address" id="amt" type="text" class="form-control" name="finalamt" placeholder="0" required readonly>

  </div>

 
<br>
        <button type="submit" class="btn btn-primary" id="btnsub" name=btnsub>Buy</button>
        <button type="reset" class="btn btn-danger" id="btnres">Reset</button>

</form>




</div>
<%
String date1=(new java.util.Date()).toLocaleString();
if(request.getParameter("btnsub")!=null)
{
	String o,u,f,m,num,add;
	u=unm;
	
    o="out";
    f=request.getParameter("finalamt");
	m=request.getParameter("mode");
	num=request.getParameter("num");
	add=request.getParameter("adda");
	

PreparedStatement pst1=cn.prepareStatement("insert into payment(username,mode,amount,number,address,products,date1) values(?,?,?,?,?,?,?)");
pst1.setString(1,u);
pst1.setString(2,m);
pst1.setString(3,f);
pst1.setString(4,num);
pst1.setString(5,add);
pst1.setString(6,name);
pst1.setString(7,date1);
pst1.executeUpdate();
out.println("<script>alert('Thank you for your order');window.location='index.jsp';</script>");
}
}
}
catch(Exception ex)
{
ex.printStackTrace();	
}


%>

