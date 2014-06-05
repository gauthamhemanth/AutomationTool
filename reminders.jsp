<%@ include file="conn.jsp"%>
<html>
<center>
<br>
<br>
<body bgcolor="turquoise">

<H1>
TODAY'S REMINDERS
</H1>
<table border="2">
<%!
Statement st1;
ResultSet rs1;
String s,taskid,fromid,user,status;
String postdate, ddate;
%>
<form action="home1.jsp">
<table border="1">
<tr>
<td>TASK ID</td>
<td>FROM ID</td>
<td>POST DATE</td>
<td>DUE DATE</td>
<td>STATUS</td>
</tr>
<%
try
{
user=(String)session.getAttribute("userid");
//out.println(user);
s="select * from task where toid='"+user+"' and dates-2 between sysdate-1 and sysdate";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(s);
while(rs.next())
{
taskid=rs.getString(1);
fromid=rs.getString(4);
postdate=rs.getString(5);
status=rs.getString(8);
ddate=rs.getString(6);
%>
<tr>
<td align="center"><b><%=taskid%></td>
<td align="center"><b><%=fromid%></td>
<td align="center"><b><%=postdate%></td>
<td align="center"><b><%=ddate%></td>
<td align="center"><b><%=status%></td>
<%
}
}
catch(Exception e)
{
out.println(e);
}
%>
</table>
<br>
<br>
<input type="submit" value="BACK"/>

</center>
</body>
</html>
