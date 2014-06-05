<html>
<head>
<style type="text/css">
#style3
{
background-color:lightblue;
font-family:sans-serif;
font-style:comic-sans-ms;
font-size=12pt;
color:black;
border:medium solid;
text-transform:uppercase;
text-color:black;
position:absolute;
left:850px;
top:150px;
width:300px;
height:325px;
}
</style>
</head>

<body>

<div id="style3">
<%@ include file="conn.jsp"%>
<%@ page import="java.io.*"%>
<marquee direction="up" SCROLLDELAY="5">
<%!String newsid,newstitle,department,role1,s,div,divid,back;%>
<%try{
String user=(String)session.getAttribute("user");
String role=(String)session.getAttribute("role");
//out.println(user+"--"+role);
//role="admin";
%>
<%
Statement st1=con.createStatement();

s="select * from NEWS";
//out.println(s);
ResultSet rs1=st1.executeQuery(s);
while(rs1.next())
{
newsid=rs1.getString(1);
newstitle=rs1.getString(2);
department=rs1.getString(3);
//out.println(news+"-"+department);
InputStream is=rs1.getBinaryStream(4);
FileOutputStream fos=new FileOutputStream("C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/Intranet portal/FILES/news/"+newstitle+".docx");
int k;
while((k=is.read())!=-1)
{
fos.write(k);
//out.println("file wrote");
}
//out.println(empid);
%>
<ul><li>
<b><a href="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/Intranet portal/FILES/news/<%=newstitle%>.doc" onClick="window.open('FILES/accounts/'+'<%=newstitle%>'+'.docx')"><%=newstitle%></a><br>
<b>DEPT:<%=department%></td><br>
</li>
</ul>
<%
}
}catch(Exception e)
{
out.println(e);
}
%>
</DIV>
</body>
</html>