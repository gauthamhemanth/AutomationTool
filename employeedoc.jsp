<%@ include file="conn.jsp"%>
<%@ page import="java.io.*"%>
<html>
<body>
<%
try
{
String docid=request.getParameter("docid");
String docoutname=request.getParameter("docoutname");
String file=request.getParameter("file");
out.println(docid);
String atach1="C:/sangi/"+file;
out.println(atach1);
File f=new File(atach1);
FileInputStream fis=new FileInputStream(f);
PreparedStatement pst=con.prepareStatement("update document set doc_out_name=?,delivery_date=sysdate,docout=? where docid='"+docid+"'");
pst.setString(1,docoutname);
pst.setBinaryStream(2,fis,(int)f.length());
int k=pst.executeUpdate();
//out.println("file inserted"+k);
pst=con.prepareStatement("insert into report(documentid,reportdes,reportdate,status) values(?,?,sysdate,?)");
pst.setString(1,docid);
pst.setString(2,"docuement sent");
pst.setString(3,"NEW");
pst.executeUpdate();
%>
<h1>
FILE INSERTED SUCCESSFULLY
</h1>
<br>
<%
}catch(Exception e)
{
out.println(e);
}
%>
Click  <a href="clientdocview.jsp">Here </a> to view Documents
</body>
</html>