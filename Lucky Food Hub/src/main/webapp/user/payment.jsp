<%@include file="header.jsp" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<% 
String am="",allp="";
am=request.getParameter("finalamt");
allp=request.getParameter("allp");
String unm=(String)session.getAttribute("username");
%>
<style>
td
{
color:white;
}
th
{
color:red;
}
</style>

<h1 align=center>Payment Details</h1>
<div class="row">
<form id=frmreg method="post" name="myForm">
<div class="input-group">
<span class-"input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
<input ng-model="address" id="Flavour" type="text" class="form-control" name="finalamt" placeholder="Amount" value="<% out.println(am); %>" required readonly>
</div>
<br>
<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-shopping-cart"></i></span>
<select id=wt name=mode class="form-control" oninvalid="this.setCustomValidity('please select the payment mode')" oninput="this.setCustomValidity('')" required>
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
<button type="submit" class="btn btn-primary" id="btnsub" name="btnsub">Submit</button>
<button type="reset" class="btn btn-danger" id="btnres">Reset</button>
</form>
</div>
<%
 String date1=(new java.util.Date()).toLocaleString();

if(request.getParameter("btnsub")!=null)
{
	String o,u,a,m,num,add;
	u=unm;
	a=am;
    o="out";
	m=request.getParameter("mode");
	num=request.getParameter("num");
	add=request.getParameter("adda");
	try
	{

Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");


PreparedStatement pst1=cn.prepareStatement("insert into payment(username,mode,amount,number,address,products,date1) values(?,?,?,?,?,?,?)");
pst1.setString(1,u);
pst1.setString(2,m);
pst1.setString(3,a);
pst1.setString(4,num);
pst1.setString(5,add);
pst1.setString(6,allp);
pst1.setString(7,date1);
pst1.executeUpdate();

PreparedStatement pst2=cn.prepareStatement("update cart set cartstatus=? where username=?");
pst2.setString(1,o);
pst2.setString(2,unm);
pst2.executeUpdate();
out.println("<script>alert('Thank you for your order');window.location='veg.jsp';</script>");
}

catch(Exception ex)
{
ex.printStackTrace();	
}
}

%>



