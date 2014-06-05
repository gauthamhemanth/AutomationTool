<%@ include file="conn.jsp"%>
<html>
<head>
</head>
<center>
<br>
<br>
<br>
<body bgcolor="turquoise">
<%!
Statement st1;
ResultSet rs1;
String s,taskid,user;
%>
ALERTS:<%
try
{
user=(String)session.getAttribute("userid");
//out.println(user);
s="select * from task where to_id='"+user+"' and dates between sysdate-1 and sysdate";
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
</center>
</body>
</html>
