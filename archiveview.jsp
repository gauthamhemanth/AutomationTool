 <html>

<body bgcolor="turquoise">
<center>
<h1>
ARCHIVE VIEW
</H1>
<table border="1">
<br>
<br>
<tr>
<td><font size="4" face="times new roman" color="black">DOCUMENT ID</td>
<td><font size="4" face="times new roman" color="black">DOCUMENT IN</td>
<td><font size="4" face="times new roman" color="black">DOCUMENT OUT</td>
</tr>
</center>
<%@ include file="conn.jsp"%>
<%! 
String docid,docin,docout,s,back;
%>
<%
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select docid from document where duedate+30<sysdate");
while(rs.next())
{
docid=rs.getString(1);
//out.println(docid);
PreparedStatement pst=con.prepareStatement("update document set archive='archived' where docid='"+docid+"'");
pst.executeUpdate();
}
String user=(String)session.getAttribute("userid");
String role=(String)session.getAttribute("role");

if(role.equals("employee"))
{
s="select d.docid,d.docname,d.doc_out_name from document d ,employee e,division dt where d.archive='archived' and e.div_id=dt.div_id and d.eid=dt.divname and e.eid='"+user+"'";
back="home1.jsp";
}
else
{
s="select docid,docname,doc_out_name from document where archive='archived'";
back="adminhome.jsp";
}
//out.println(s);
Statement st1=con.createStatement();
ResultSet rs1=st1.executeQuery(s);
while(rs1.next())
{
docid=rs1.getString(1);
docin=rs1.getString(2);
docout=rs1.getString(3);

%>
<tr>
<td><%=docid%></td>
<td><a href="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/OAT/files/<%=docin%>.doc"
onClick="window.open('files/'+'<%=docin%>'+'.doc');"><%=docin%></a></td>
<td><a href="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/OAT/files/<%=docout%>.doc"
onClick="window.open('files/'+'<%=docout%>'+'.doc');"><%=docout%></a></td>
<%
}
%>
</tr>
</table>
<center>
<a href="<%=back%>">BACK</a>
</center>
</center>
</body>
</Html>
