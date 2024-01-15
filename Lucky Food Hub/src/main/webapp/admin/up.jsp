<%@include file="header.jsp" %>
<%@page import="java.sql.*" %>
<%
String unm=(String)session.getAttribute("username");
String id=request.getParameter("id");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
	
            String sql="select * from product where id="+id;
            PreparedStatement pst=cn.prepareStatement(sql);
 ResultSet rs=pst.executeQuery();

 if(rs.next())
 {
        
            
     String name,fullprice,halfprice,type,subtype;
     name=rs.getString("name");
     fullprice=rs.getString("fullprice");
     halfprice=rs.getString("halfprice");
     type=rs.getString("type");
     subtype=rs.getString("subtype");
    
     
 %>


<h1 align=left></h1>
<div class="row" align=center>
<div class="col-sm-4"><center>
<form id="frmreg" method ="POST" name="myForm">
<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
<select name="type" class="form-control">
<option value='<% out.print(type); %>'><% out.print(type); %></option>
<option value="Veg">Veg</option>
<option value="Non Veg">Non Veg</option>
</select>
</div>
<br>
<div class="input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
<select name="subtype" class="form-control">

<option value="<% out.print(subtype); %>"><% out.print(subtype); %></option>
<option value="Starter">Starter</option>
<option value="Rice">Rice</option>
<option value="Noodles">Noodles</option>
</select>
</div>
<br>
<div class"input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
<input ng-model="contact" id="name" type="text" class="form-control" name="name" placeholder="Enter the name" value='<% out.println(name); %>'>
</div>
<br>
<div class="input-group">

<div class"input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
<input ng-model="contact" id="hprice" type="text" class="form-control" name="hprice" placeholder="Half price" pattern="\d+" value='<% out.println(halfprice); %>' required>
</div>
<br>
<div class"input-group">
<span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
<input ng-model="contact" id="fprice" type="text" class="form-control" name="fprice" placeholder="Full price" pattern="\d+" value="<% out.println(fullprice); %>" required>

</div>
<br>

<button type="submit" class="btn btn-primary" id="btnsub" name="btnsub">submit</button>
<button type="reset" class="btn btn-danger" id="btnres">Reset</button>
</form></center>
</div>
</div>
</div>


<% 
 
 if(request.getParameter("btnsub")!=null)
 {
 String type2,subtype2,name2,hprice2,fprice2;
 type2=request.getParameter("type");
 subtype2=request.getParameter("subtype");
 name2=request.getParameter("name");
 hprice2=request.getParameter("hprice");
 fprice2=request.getParameter("fprice");
 
 PreparedStatement pst2=cn.prepareStatement("update product set type=?,subtype=?,name=?,halfprice=?,fullprice=? where id=?");
 pst2.setString(1,type2);
 pst2.setString(2,subtype2);
 pst2.setString(3,name2);
 pst2.setString(4,hprice2);
 pst2.setString(5,fprice2);
 pst2.setString(6,id);
 pst2.executeUpdate();
 out.println("<script>alert('Updated Successfully');window.location='up1.jsp';</script>");

 }
 }
}
catch(Exception ex)
{
ex.printStackTrace();	
}
%>

