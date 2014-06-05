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
<%
String user=(String)session.getAttribute("userid");
%>
</body>
</br>
</html>
<%@ include file="report.jsp" %>