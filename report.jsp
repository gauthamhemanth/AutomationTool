<%@ include file="conn.jsp"%>
<html>
<center>
<br>
<br>
<body bgcolor="turquoise">

<H1>
TODAY'S REPORTS
</H1>
<table border="2">
<%!
Statement st1;
ResultSet rs1;
String s,docid,fromid,user,status;
String postdate, ddate;
%>
<form action="home1.jsp">
<table border="1">
<tr>
<td>Document ID</td>
<td>FROM ID</td>
<td>STATUS</td>
</tr>
<%
try
{
user=(String)session.getAttribute("userid");
//out.println(user);
s="select r.documentid,d.eid,r.reportdes from report r,document d where r.documentid=d.docid and d.cid='"+user+"'";
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(s);
while(rs.next())
{
docid=rs.getString(1);
fromid=rs.getString(2);
status=rs.getString(3);

%>
<tr>
<td align="center"><b><a href="clientdocview.jsp"><%=docid%></a></td>
<td align="center"><b><%=fromid%></td>
<td align="center"><b><%=status%></td>
<%
}
}
catch(Exception e)
{
out.println(e);
}
%>
</table>
<br>
<br>
<input type="submit" value="BACK"/>

</center>
</body>
</html>
