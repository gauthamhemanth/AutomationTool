<html>
<head>
<style type="text/css">
#style3
{
background-color:turquoise;
font-family:sans-serif;
font-style:comic-sans-ms;
font-size=12pt;
color:black;
text-transform:uppercase;
text-color:black;
position:absolute;
left:850px;
top:200px;
width:300px;
height:325px;
}
</style>
</head>

<body>

<div id="style3">
<%@ include file="conn.jsp"%>
<%@ page import="java.io.*"%>
ALERTS:
<br>
<marquee direction="up" SCROLLDELAY="5" SCROLLAMOUNT="2">
<%!
Statement st1;
ResultSet rs1;
String s,taskid,user;
%>
<%
try
{
user=(String)session.getAttribute("userid");
//out.println(user);
s="select * from task where toid='"+user+"' and dates between sysdate-1 and sysdate";
Statement st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet rs=st.executeQuery(s);
//out.println(rs);
if(!rs.next())
{
out.println("NO TASKS DUE");
}
else
{
rs.previous();
while(rs.next())
{
taskid=rs.getString(1);
%>
<p align="center"><b>Task ID:<a href="taskview.jsp?taskid=<%=taskid%>"><%=taskid%></a></p>
<%
}
}
}
catch(Exception e)
{
out.println(e);
}
%>
</DIV>
</body>
</html>