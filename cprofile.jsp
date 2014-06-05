<%@ include file="conn.jsp"%>
<html>
<head>
<center>
<font size="6" face="times new roman" color="black">OFFICE AUTOMATION TOOL
</center>
</head>
<br>
<body bgcolor="turquoise">
<center>
<a href="clienthome.jsp"><font size="4" face="times new roman" color="black">HOME</a>&nbsp;
<a href="cprofile.jsp"><font size="4" face="times new roman" color="black">PROFILE</a>&nbsp;
<a href="clientdocview.jsp"><font size="4" face="times new roman" color="black">DOCUMENT </a>&nbsp;&nbsp;
<a href="clientdocout.jsp"><font size="4" face="times new roman" color="black">DOCUMENT OUT</a>&nbsp;&nbsp;
<a href="logout.jsp"/><font size="4" face="times new roman" color="black">LOGOUT</a>
</center>
<br>
<form action="updatecdetails.jsp">
<%!
Statement st1;
ResultSet rs1;
String s,user,role,cid,cname,caddr,cphone,cmail; 
%>
<center>
<table border="1">
<tr>
<td><font size="4" face="times new roman" color="black">CLIENT ID</td>
<td><font size="4" face="times new roman" color="black">CLIENT NAME</td>
<td><font size="4" face="times new roman" color="black">CLIENT ADDRESS</td>
<td><font size="4" face="times new roman" color="black">PHONE</td>
<td><font size="4" face="times new roman" color="black">EMAIL ID</td>
</tr>
<%
try
{
user=(String)session.getAttribute("userid");
role=(String)session.getAttribute("role");
if(role.equals("admin"))
{
s="select * from client";
}
else 
{
s="select * from CLIENT where cid='"+user+"'";
}
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(s);
while(rs.next())
{
cid=rs.getString(1);
cname=rs.getString(2);
caddr=rs.getString(3);
cphone=rs.getString(5);
cmail=rs.getString(4);
%>
<tr>
<td align="center"><b><%=cid%></td>
<td align="center"><b><%=cname%></td>
<td align="center"><b><%=caddr%></td>
<td align="center"><b><%=cphone%></td>
<td align="center"><b><%=cmail%></td>
</tr>
<%
}
}
catch(Exception e)
{
out.println(e);
}
%>
</table>
<input type="hidden" name="cid" value="<%=cid%>"/>
<input type="submit" value="edit"/></td><td>&nbsp;&nbsp;

</center>
</form>
</body>
</html>