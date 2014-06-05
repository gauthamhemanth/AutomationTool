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
<a href="clientdocview.jsp"><font size="4" face="times new roman" color="black">DOCUMENT</a>&nbsp;&nbsp;
<a href="clientdocout.jsp"><font size="4" face="times new roman" color="black">DOCUMENT OUT</a>&nbsp;&nbsp;
<a href="logout.jsp"/><font size="4" face="times new roman" color="black">LOGOUT</a>
</center>
<body bgcolor="turquoise">
<center>
<script>
function validate()
{
var i=document.myform.npwd.value;
var j=document.myform.rpwd.value;
if(i!=j)
{
alert("match not found");
document.myform.npwd.focus();
}
}
</script>
<%String userid=(String)session.getAttribute("userid");
%>
<form action="password.jsp" name="myform" onSubmit="validate()" >
<table border="1">
<tr>
<td><font size="4" face="times new roman" color="black">USER ID</td>
<td><input type="text" value="<%=userid%>" name="uid" disabled/></td>
<input type="hidden" value="<%=userid%>" name="uid"/>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">OLD PASSWORD</td>
<td><input type="password" name="opwd"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">NEW PASSWORD</td>
<td><input type="password" name="npwd"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">RE-ENTER PASSWORD</td>
<td><input type="password" name="rpwd"/></td>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
<td><input type="submit" value="SET"/></td>
<td><input type="button" value="CANCEL"onClick="window.navigate('clienthome.jsp')"/></td>
</tr>
</table>
</form>
</center>
</body>
</html>
