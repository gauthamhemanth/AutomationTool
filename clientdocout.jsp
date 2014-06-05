<html>
<head>
<center>
<font size="6" face="times new roman" color="black">OFFICE AUTOMATION TOOL
</center>
<br>
<%String fromid=(String)session.getAttribute("userid");
%>
<body bgcolor="turquoise">
<center>
<a href="clienthome.jsp"><font size="4" face="times new roman" color="black">HOME</a>&nbsp;
<a href="cprofile.jsp"><font size="4" face="times new roman" color="black">PROFILE</a>&nbsp;
<a href="clientdocview.jsp"><font size="4" face="times new roman" color="black">DOCUMENT</a>&nbsp;&nbsp;
<a href="clientdocout.jsp"><font size="4" face="times new roman" color="black">DOCUMENT OUT</a>&nbsp;&nbsp;
<a href="logout.jsp"/><font size="4" face="times new roman" color="black">LOGOUT</a>
</center>
<center>
<br>
<form action="docasign.jsp">
<table border="1">
<tr>
<td><font size="4" face="times new roman" color="black">DOC ID</td>
<td> <input type="text" name="docid"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">DOC NAME</td>
<td> <input type="text" name="docname"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">FROM ID</td>
<td> <input type="text" name="eid" value="<%=fromid%>" disabled/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">TO ID</td>
<td> <select name="empid"><option>select</option> <option>CED</option><option>SED</option><option>SPD</option><option>ISD</option><option>SSD</option><option>CAD</option>
</select></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">ATTACHMENTS</td>
<td><input type="file" name="file"/> 
</tr>
<tr>
<td>ASSIGN DATE</td>
<td>
<select name="day"> 
<%
for(int i=1;i<=31;i++)
{
%>
<option><%=i%></option>
<%
}
%>
</select>
<select name="month"><option>Jan</option><option>Feb</option><option>Mar</option><option>Apr</option><option>May</option><option>Jun</option><option>Jul</option><option>Aug</option><option>Sep</option><option>Oct</option><option>Nov</option><option>Dec</option></select>
<select name="year">
<%
for(int i=2000;i<=2012;i++)
{
%>
<option><%=i%></option>
<%
}%></td>
</tr>
<tr>
<td>DUE DATE</td>
<td>
<select name="days"> 
<%
for(int i=1;i<=31;i++)
{
%>
<option><%=i%></option>
<%
}
%>
</select>
<select name="months"><option>Jan</option><option>Feb</option><option>Mar</option><option>Apr</option><option>May</option><option>Jun</option><option>Jul</option><option>Aug</option><option>Sep</option><option>Oct</option><option>Nov</option><option>Dec</option></select>
<select name="years">
<%
for(int i=2000;i<=2012;i++)
{
%>
<option><%=i%></option>
<%
}%></td>
</tr>

<tr>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
<td><input type="submit" value="ASSIGN"/></td>
<td><input type="button" value="CANCEL" onClick="window.navigate('clienthome.jsp')"/></td>
</tr>
</table>
</form>
</center>
</body>
</html>