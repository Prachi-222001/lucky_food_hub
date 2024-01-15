<%@include file="header.jsp" %>
<%@page import="java.sql.*" %>
<% 
String ckid,price,image,name,id,io,unm2;
int fp,hp;
io="in";
ckid=request.getParameter("cakeid"); 
price=request.getParameter("price");
unm2=request.getParameter("username");
out.println(ckid);
%>
<%
price="0";
image="";
name="";


out.println("<h1 align=center>Order Details</h1>");
out.println("<div class=\"row\">");
out.println("<form id=frmreg method=\"post\" name=\"myForm\">");
  out.println("<div class=\"input-group\">");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
	
            String sql="select * from product where id="+ckid;
            PreparedStatement pst=cn.prepareStatement(sql);
 ResultSet rs=pst.executeQuery();
 if(rs.next())
 {
     
     
     image=rs.getString("image");
     name=rs.getString("name");
     fp=rs.getInt("fullprice");
     hp=rs.getInt("halfprice");
     out.println("<img src=\"../images/"+image+"\"class=\"img-responsive\" width=300 height=300 >");
     out.println("<h3>"+name+"</h3>");
     
   

%>


<br>

  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-flag"></i></span>
    <input ng-model="address" id="opt" name="opt" type="text" class="form-control" name="cakeid" placeholder="Product id" value="<% out.println(ckid); %>" required readonly>

  </div>
<br>

  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
    <input ng-model="address" id="price1" type="text" class="form-control" name="price1" placeholder="Price" value="<% out.println(hp);%>" required readonly>

  </div>

<br>

  <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
    <input ng-model="address" id="price" type="text" class="form-control" name="price" placeholder="Price" value="<% out.println(fp); %>" required readonly>

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
        <button type="submit" class="btn btn-primary" id="btnsub" name=btnsub>Add to cart</button>
        <button type="reset" class="btn btn-danger" id="btnres">Reset</button>

</form>




</div>
<%
 
if(request.getParameter("btnsub")!=null)
{
String p,w,f;
id=request.getParameter("cakeid");

p=request.getParameter("price");
w=request.getParameter("wt");
f=request.getParameter("finalamt");

PreparedStatement pst1=cn.prepareStatement("insert into cart values(?,?,?,?,?,?,?)");
pst1.setString(1,unm2);
pst1.setString(2,id);
pst1.setString(3,p);
pst1.setString(4,w);
pst1.setString(5,f);
pst1.setString(6,io);
pst1.setString(7,name);

pst1.executeUpdate();
out.println("<script>alert('Product Added to Cart');window.location='viewcart.jsp?finalamt="+f+"&username="+unm2+"';</script>");
}
}
}
catch(Exception ex)
{
ex.printStackTrace();	
}


%>

