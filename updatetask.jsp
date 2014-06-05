<%@ include file="conn.jsp"%>
<%
String taskid=request.getParameter("taskid");
String status=request.getParameter("status");
%>
<html>
<head>
<center>
<font size="6" face="times new roman" color="black">UPDATE TASK
</center>
</head>
<body bgcolor="turquoise">
<form action="update.jsp">
<center>
<table border="1">
<tr>
<td><font size="4" face="times new roman" color="black">TASK ID </td>
<td><input type="text" name="taskid" value="<%=taskid%>" disabled/>
</td>
<tr>
<td><font size="4" face="times new roman" color="black">STATUS</td>
<td><input type="text" name="status" value="<%=status%>"/>
</tr>
<tr>
<input type="hidden" name="taskid" value="<%=taskid%>"/>
<td><input type="submit" value="UPDATE"/></td>
<td><input type="button" value="CANCEL"/></td>
</tr>
</table>
</form>
</center>
</body>
</html>


