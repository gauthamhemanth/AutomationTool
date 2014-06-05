<html>
<body bgcolor="turquoise">
<%@ page import="java.io.*,java.sql.*"%>
<%@ include file="conn.jsp"%>
<form action="home1.jsp">
<%!
ResultSet rs;
ResultSet rs1;
String docid;
String div_name;
String docname;
String frmid;
String toid;
String back;
String docout;
Date adate;
Date ddate;
String deldate;
String s;
int i=0;
%>
<center>
<BR><BR><BR><BR>
<table border="1">
<tr>
<td><font size="4" face="times new roman" color="black">DOCUMENT ID</td>
<td><font size="4" face="times new roman" color="black">DOCUMENT OUT</td>
<td><font size="4" face="times new roman" color="black">DOCUMENT IN</td>
<td><font size="4" face="times new roman" color="black">EMPLOYEE ID</td>
<td><font size="4" face="times new roman" color="black">CLIENT ID</td>
<td><font size="4" face="times new roman" color="black">POST DATE</td>
<td><font size="4" face="times new roman" color="black">DUE DATE</td>
<td><font size="4" face="times new roman" color="black">DELIVERY DATE</td>
</tr>
<%
try{
String user=(String)session.getAttribute("userid");
String role=(String)session.getAttribute("role");
//out.println(user);
//out.println(role);
if(role.equals("employee"))
{
Statement st1=con.createStatement();
ResultSet rs1=st1.executeQuery("select d.div_name  from employee e,division d where e.div_id=d.div_id and e.eid='"+user+"'");
if(rs1.next())
{
div_name=rs1.getString(1);
}
s="select e.docid,e.eid,e.cid,e.postdate,e.duedate,e.delivery_date,e.docin,e.docout,e.docname,e.doc_out_name from document e where e.eid='"+div_name+"' and e.archive='No'";
back="home1.jsp";
}
else if(role.equals("client"))
{
s="select e.docid,e.eid,e.cid,e.postdate,e.duedate,e.delivery_date,e.docin,e.docout,e.docname,e.doc_out_name from document e where e.cid='"+user+"' and e.archive='No'";
back="clienthome.jsp";
}
else
{
s="select e.docid,e.eid,e.cid,e.postdate,e.duedate,e.delivery_date,e.docin,e.docout,e.docname,e.doc_out_name from document e where e.archive='No'";
back="adminhome.jsp";
}
//out.println(s+"<br>");
//out.println(div_name);

Statement st=con.createStatement();
rs=st.executeQuery(s);
while(rs.next())
{
docid=rs.getString(1);
docname=rs.getString(9);
Blob b=rs.getBlob(7);
frmid=rs.getString(3);
toid=rs.getString(2);
adate=rs.getDate(4);
ddate=rs.getDate(5);
docout=rs.getString(10);
deldate=rs.getString(6);

//out.println("docid="+docid+"-docname="+docname+"-frmid="+frmid+"-toid="+toid+"-adate="+adate+"-ddate="+ddate+"-docout="+docout+"-deldate="+deldate+"<br>");

byte b1[]=new byte[(int)b.length()];
b1=b.getBytes(1,(int)b.length());
FileOutputStream fos=new FileOutputStream("C:/Program Files (x86)/Apache Software Foundation/Tomcat 5.5/webapps/OAT/files/"+docname+".doc");
fos.write(b1);
fos.close();
if(docout==null)
{

docout="";
deldate="";
}
else
{

deldate=rs.getString(6);
Blob a=rs.getBlob(8);
//out.println(a);

byte a1[]=new byte[(int)a.length()];
a1=a.getBytes(1,(int)a.length());
FileOutputStream fos1=new FileOutputStream("C:/Program Files (x86)/Apache Software Foundation/Tomcat 5.5/webapps/OAT/files/"+docout+".doc");
fos1.write(a1);
fos1.close();

}

//out.println("docid="+docid+"-docname="+docname+"-frmid="+frmid+"-toid="+toid+"-adate="+adate+"-ddate="+ddate+"-docout="+docout+"-deldate="+deldate+"<br>");

%>
<tr>
<td align="center"><b><%=docid%></td>
<td><a href="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/OAT/files/<%=docname%>.doc"
onClick="window.open('files/'+'<%=docname%>'+'.doc');"><%=docname%></a></td>
<td><a href="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/OAT/files/<%=docout%>.doc"
onClick="window.open('files/'+'<%=docout%>'+'.doc');"><%=docout%></a></td>
<td align="center"><b><%=frmid%></td>
<td align="center"><b><%=toid%></td>
<td align="center"><b><%=adate%></td>
<td align="center"><b><%=ddate%></td>
<%
if(deldate.equals("") && role.equals("employee"))
{
%>
<td></td>
<TD><a href="Edoc.jsp?docid=<%=docid%>">Send Document</a></td>
<%
}
else
{
%>
<td align="center"><b><%=deldate%></td>
<%
}
%>
</tr>
<%
}
}catch(Exception e)
{
out.println(e);
}
%>
</table><br><br>
<center>
<a href="<%=back%>">BACK</a>
</center>
</center>
</form>
</body>
</html>
