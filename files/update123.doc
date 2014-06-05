<html>
<body>
<form action=" ">
<%@page import="java.sql.*",java.sql.*"/>
<%@include file="conn.jsp"%>
<%@page language="java"%>
<%
String path=request.getParameter("c:\sangi\ooad"+path);
File f=new File(path);
FileInputStream fis=new FileInputStream(f);
PreparedStatement pst=con.prepareStatement("insert into file values(?)");
pst.setBinaryStream(5,fis,(int)f.length());
pst.executeUpdate();
%>
File inserted sucessfully
<input type="submit" value="view">
</form>
</body>
</html>

