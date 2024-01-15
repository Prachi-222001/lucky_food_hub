<%@include file="header.jsp" %>
<%@page import="java.sql.*" %>

<%
String fnm=(String)session.getAttribute("fullname");
String unm=(String)session.getAttribute("username");
%>


<section class="gallery" id="gallery">

    <h1 class="heading">Veg <span>Soups</span></h1>

    

<div class="row" align=center>

<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/luckydb","root","");
	
            String sql="select * from product where type='Non Veg' and subtype='Starter'";
            PreparedStatement pst=cn.prepareStatement(sql);
 ResultSet rs=pst.executeQuery();
int i=0;
 while(rs.next())
 {
        
            
     String id,name,fp,hp,image;
     id=rs.getString("id");
     image=rs.getString("image");
     name=rs.getString("name");
     fp=rs.getString("fullprice");
     hp=rs.getString("halfprice");
     out.println("<div class='col-md-4' align=center>");
     out.println("<div class=\"thumbnail\">");
     out.println("<a href=\"images/image\" target=\"_blank\">");
     out.println("<img src=\"images/"+image+"\"class=\"img-responsive\" width=100% height=80% >");
     out.println("<div class=\"caption\">");
     out.println("<b>"+name+"</b><br><b>"+fp+" / "+hp+"</b><br></div></a><a class=\"btn btn-primary\" href='signin.jsp'>Buy Now</a></div></div>");
	 i++;
if(i==3)
{
out.println("</div>");
out.println("<div class=\"row\">");
i=0;

}
}
 out.println("</div>");
 out.println("</section>"); 
	 


out.println("<section class=\"gallery\" id=\"gallery\">");
out.println("<h1 class=\"heading\">Veg <span>Rice</span></h1>");
out.println("<div class=\"row\" align=center>");


	        String sql2="select * from product where type='Non Veg' and subtype='Rice'";
            PreparedStatement pst1=cn.prepareStatement(sql2);
 ResultSet rs1=pst1.executeQuery();
int j=0;
 while(rs1.next())
 {
        
            
     String id,name,fp,hp,image;
     id=rs1.getString("id");
     image=rs1.getString("image");
     name=rs1.getString("name");
     fp=rs1.getString("fullprice");
     hp=rs1.getString("halfprice");
     out.println("<div class='col-md-4' align=center>");
     out.println("<div class=\"thumbnail\">");
     out.println("<a href=\"images/"+image+"\" target=\"_blank\">");
     out.println("<img src=\"images/"+image+"\"class=\"img-responsive\" width=100% height=80% >");
     out.println("<div class=\"caption\">");
     out.println("<b>"+name+"</b><br><b>"+fp+" / "+hp+"</b><br></div></a><a class=\"btn btn-primary\" href='signin.jsp'>Buy Now</a></div></div>");
	 j++;
if(j==3)
{
	out.println("</div>");
	out.println("<div class=\"row\">");
	j=0;

}
}
 out.println("</div>");
 out.println("</section>"); 


out.println("<section class=\"gallery\" id=\"gallery\">");
out.println("<h1 class=\"heading\">Veg <span>Noodles</span></h1>");
out.println("<div class=\"row\" align=center>");



	
            String sql1="select * from product where type='Non Veg' and subtype='Noodles'";
            PreparedStatement pst2=cn.prepareStatement(sql1);
 ResultSet rs2=pst2.executeQuery();
int k=0;
 while(rs2.next())
 {
        
            
     String id,name,fp,hp,image;
     id=rs2.getString("id");
     image=rs2.getString("image");
     name=rs2.getString("name");
     fp=rs2.getString("fullprice");
     hp=rs2.getString("halfprice");
     out.println("<div class='col-md-4' align=center>");
     out.println("<div class=\"thumbnail\">");
     out.println("<a href=\"images/image\" target=\"_blank\">");
     out.println("<img src=\"images/"+image+"\"class=\"img-responsive\" width=100% height=80% >");
     out.println("<div class=\"caption\">");
     out.println("<b>"+name+"</b><br><b>"+fp+" / "+hp+"</b><br></div></a><a class=\"btn btn-primary\" href='signin.jsp'>Buy Now</a></div></div>");
	 k++;
if(k==3)
{
	out.println("</div>");
	out.println("<div class=\"row\">");
	k=0;

}
}
 out.println("</div>");
 out.println("</section>"); 
	 
}	
catch(Exception ex)
{
ex.printStackTrace();	
}
%>