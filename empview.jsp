<%@ include file="conn.jsp"%>
<html>
<head>
</head>
<center>
<br>
<br>
<br>
<body bgcolor="turquoise">
<table border="2">
<%!
Statement st1;
ResultSet rs1;
String s,user,role,eid,ename,empaddress,gender,deptid,desgname,aid,phone,emailid,expskills,date,dates,back;
%>
<table border="1">
<tr><td>EMPLOYEE ID</td>
<td>EMPLOYEE NAME</td>
<td>GENDER</td>
<td>EMP ADDRESS</td>
<td>DEPARTMENT ID</td>
<td>DEPARTMENT</td>
<td>AUTHORITY ID</td>
<td>PHONE</td>
<td>EMAIL-ID</td>
<td>SKILLS</td>
<td>DATE OF BIRTH</td>
<td>DATE OF JOIN</td>
<tr>
<%
try
{
user=(String)session.getAttribute("userid");
role=(String)session.getAttribute("role");
if(role.equals("admin"))
{
s="select * from employee";
back="adminhome.jsp";
}
else 
{
s="select * from EMPLOYEE  where eid='"+user+"'";
back="home1.jsp";
}

Statement st=con.createStatement();
ResultSet rs=st.executeQuery(s);
while(rs.next())
{
eid=rs.getString(1);
ename=rs.getString(2);
empaddress=rs.getString(3);
gender=rs.getString(4);
deptid=rs.getString(5);
desgname=rs.getString(6);
aid=rs.getString(7);
phone=rs.getString(8);
emailid=rs.getString(9);
expskills=rs.getString(10);
date=rs.getString(11);
dates=rs.getString(12);

%>
<tr>
<td align="center"><b><%=eid%></td>
<td align="center"><b><%=ename%></td>
<td align="center"><b><%=gender%></td>
<td align="center"><b><%=empaddress%></td>
<td align="center"><b><%=deptid%></td>
<td align="center"><b><%=desgname%></td>
<td align="center"><b><%=aid%></td>
<td align="center"><b><%=phone%></td>
<td align="center"><b><%=emailid%></td>
<td align="center"><b><%=expskills%></td>
<td align="center"><b><%=date%></td>
<td align="center"><b><%=dates%></td></tr>
<%
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
