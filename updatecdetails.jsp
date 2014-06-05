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
<%@ include file="conn.jsp"%>
<%! String
cid,clientname,clientaddress,phone,email_id,back;
%>
<%
String role=(String)session.getAttribute("role"); 
if(role.equals("admin"))
{
back="cdetails.jsp";
}
else
{
back="cprofile.jsp";
}
cid=request.getParameter("cid");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from client where cid='"+cid+"'");
if(rs.next())
{
clientname=rs.getString(2);
clientaddress=rs.getString(3);
email_id=rs.getString(4);
phone=rs.getString(5);
}
else
{
clientname=clientaddress=phone=email_id="";
}
%>
<br>
<br>
<center>
<form action="clientupdate.jsp">
<table border="1">
<tr>
<td><font size="4" face="times new roman" color="black">CLIENT ID</td>
<td><input type="text" name="cid" value="<%=cid%>" disabled /></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">CLIENT NAME</td>
<td><input type="text" name="cname" value="<%=clientname%>" /></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">CLIENT ADDRESS</td>
<td><textarea rows="2" name="caddr" cols="20"/><%=clientaddress%></textarea>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">PHONE</td>
<td><input type="text" name="cphone" value="<%=phone%>"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">EMAIL ID</td>
<td><input type="text" name="cemail" value="<%=email_id%>" /></td>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
</tr>
<td>
<input type="hidden" name="cid" value="<%=cid%>" /></td>
<td><input type="submit" value="UPDATE"/></td>
<td><input type="button" value="CANCEL" onClick="window.navigate('<%=back%>')"/></td>
</tr>
</table>
</form>
</center>
</body>
</html>