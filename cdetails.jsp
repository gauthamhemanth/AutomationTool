<html>
<head>
<center>
<font size="6" face="times new roman" color="black" >OFFICE AUTOMATION TOOL
</center>
</head>
<br>
<script>
function update()
{
var i=document.myhome.cid.value;
window.location.replace('updatecdetails.jsp?cid='+i);
}
</script>

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
<form action="clientreg.jsp" name="myhome">
<center>
<table border="1">
<tr>
<td><font size="4" face="times new roman" color="black">CLIENT ID</td>
<td><input type="text" name="cid"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">CLIENT NAME</td>
<td><input type="text" name="cname"/></td>
</tr>
<td><font size="4" face="times new roman" color="black">CLIENT ADDRESS</td>
<td><textarea rows="2" name="caddres"/></textarea></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">EMAILID</td>
<td><input type="text" name="cemail"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">PHONE</td>
<td><input type="text" name="cphone"/></td>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
</tr>
<td><input type="submit" value="INSERT"/></td>
<td><input type="button" value="UPDATE" onClick="update()"/></td>
<td><input type="button" value="CANCEL" onClick="window.navigate('adminhome.jsp')"/></td>
</tr>
</table>
</form>
</center>
</body>
</html>