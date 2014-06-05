<html>
<head>
<center>
<font size="6" face="times new roman" color="black" >OFFICE AUTOMATION TOOL
</center>
</head>
<br>
<body bgcolor="turquoise">
<center>
<a href="adminhome.jsp"><font size="4" face="times new roman" color="black">HOME</a>&nbsp;
<a href="aempd.jsp"><font size="4" face="times new roman" color="black">EMPLOYEE</a>&nbsp;&nbsp;
<a href="cdetails.jsp"><font size="4" face="times new roman" color="black">CLIENT</a>&nbsp;&nbsp;
<a href="clientdocview.jsp"><font size="4" face="times new roman" color="black">DOCUMENT</a>&nbsp;&nbsp;
<a href="taskview.jsp"><font size="4" face="times new roman" color="black">TASK</a>&nbsp;&nbsp;
<a href="archiveview.jsp"><font size="4" face="t15:11 18-05-2011imes new roman" color="black">ARCHIVE</a>&nbsp;&nbsp;
<a href="logout.jsp"/><font size="4" face="times new roman" color="black">LOGOUT</a>
</center>
<br>
<br>
<body bgcolor="turquoise">
<form action="Empreg.jsp">
<center>
<table border="1">
<tr>
<td><font size="4" face="times new roman" color="black">EMPLOYEE ID </td>
<td><input type="text" name="eid"/>
</td>
<tr>
<td><font size="4" face="times new roman" color="black">EMPLOYEE NAME</td>
<td><input type="text" name="ename"/>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">GENDER</td>
<td><input type="radio" name="r1" value="male"/>MALE
<font size="4" face="times new roman" color="black"><input type="radio" name="r1" value="female"/>FEMALE</td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">EMPLOYEE ADDRESS</td>
<td><textarea rows="2" name="eaddr" cols="20"/></textarea></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">DEPARTMENT ID</td>
<td><input type="text" name="deptno"/></td>
</tr>
<td><font size="4" face="times new roman" color="black">DESIGNATION NAME</td>
<td>
<select name="desgname"><option>GM</option><option>DGM</option><option>SM</option><option>TO</option></select>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">AUTHORITY ID</td>
<td><input type="text" name="aid"/>
</td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">PHONE</td>
<td><input type="text" name="ephne"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">EMAIL ID</td>
<td><input type="text" name="emailid"/></td> 
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">EXPERT SKILLS</td>
<td><input type="text" name="expskills"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">DATE OF BIRTH</td>
<td><select name="day">
<%
for(int i=1;i<=31;i++)
{
%>
<option><%=i%></option>
<%
}%>
</select>
<select name="month"><option>Jan</option><option>Feb</option><option>Mar</option><option>Apr</option><option>May</option><option>Jun</option><option>Jul</option><option>Aug</option><option>Sep</option><option>Oct</option><option>Nov</option><option>Dec</option></select>
<select name="year">
<%
for(int i=1990;i<=2100;i++)
{
%>
<option><%=i%></option>
<%
}%>
</select>
</td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">DATE OF JOIN</td>
<td><select name="days">
<%
for(int i=1;i<=31;i++)
{
%>
<option><%=i%></option>
<%
}%>
</select>
<select name="months"><option>Jan</option><option>Feb</option><option>Mar</option><option>Apr</option><option>May</option><option>Jun</option><option>Jul</option><option>Aug</option><option>Sep</option><option>Oct</option><option>Nov</option><option>Dec</option></select>
<select name="years">
<%
for(int i=1990;i<=2100;i++)
{
%>
<option><%=i%></option>
<%
}%>
</select>
</td>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
<td><input type="submit" value="INSERT"/></td>
<td><input type="button" value="VIEW"onClick="window.location.replace('empview.jsp')"/></td>
<td><input type="button" value="CANCEL"onClick="window.location.replace('adminhome.jsp')"/></td>
</tr></td>
</tr>
</table>
</form>
</center>
</body>
</html>