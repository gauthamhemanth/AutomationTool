<%@ include file="connection.jsp"%>
<html>
<head>
</head>
<center>
<br>
<br>
<br>
<body bgcolor="turquoise">
<h1>
TASK DETAILS
</H1>
<table border="2">
<%!
Statement st1;
ResultSet rs1;
String s,user,role,taskid,taskdesc,toid,fromid,pdate,tdate,assignto,status,skills,back;
%>
<table border="1">
<tr>
<td>TASK ID</td>
<td>TASK DESCRIPTION</td>
<td>SKILLS</td>
<td>ASSIGN TO</td>
<td>FROM ID</td>
<td>toid</td>
<td>POST DATE</td>
<td>DUE DATE</td>
<td>STATUS</td>
</tr>
<%
try
{
user=(String)session.getAttribute("userid");
role=(String)session.getAttribute("role");
if(role.equals("admin"))
{
s="select * from task";
back="adminhome.jsp";
}
else 
{
s="select * from task where toid='"+user+"'";
back="home1.jsp";
}
String taskid=request.getParameter("taskid");
//out.println(taskid);
if(taskid!=null)
{
s="select *from task where toid='"+user+"' and taskid='"+taskid+"'";
}
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(s);
while(rs.next())
{
taskid=rs.getString(1);
taskdesc=rs.getString(2);
skills=rs.getString(9);
assignto=rs.getString(7);
fromid=rs.getString(4);
toid=rs.getString(3);
pdate=rs.getString(5);
tdate=rs.getString(6);
status=rs.getString(8);
%>
<tr>
<td align="center"><b><%=taskid%></td>
<td align="center"><b><%=taskdesc%></td>
<td align="center"><b><%=skills%></td>
<td align="center"><b><%=assignto%></td>
<td align="center"><b><%=fromid%></td>
<td align="center"><b><%=toid%></td>
<td align="center"><b><%=pdate%></td>
<td align="center"><b><%=tdate%></td>
<%
if(status.equals("NEW") && !role.equals("admin"))
{
%>
<td> <a href="update.jsp?taskid=<%=taskid%>&&status=started">START </a>
<%
}
else
{
%>
</td>
<td align="center"><b><%=status%></td>
<%if(!status.equals("complete") && !role.equals("admin"))
{
%>
<td> <a href="updatetask.jsp?taskid=<%=taskid%>&&status=<%=status%>">UPDATE</a> </td>
<%
}
}
}
}
catch(Exception e)
{
out.println(e);
}
%>
</table>
<a href="<%=back%>">BACK</a>
</center>
</body>
</html>
