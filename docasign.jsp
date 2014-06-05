<%@ include file="conn.jsp"%>
<%@ page import="java.io.*"%>
<html>
<body>
<%
try
{
String docid=request.getParameter("docid");
String docname=request.getParameter("docname");
String toid=request.getParameter("empid");
String atach=request.getParameter("file");
String day=request.getParameter("day"); 
String month=request.getParameter("month");
String year=request.getParameter("year");
String adate=day+"-"+month+"-"+year;
String days=request.getParameter("days");
String months=request.getParameter("months");
String years=request.getParameter("years");
String ddate=days+"-"+months+"-"+years;
String frmid=(String)session.getAttribute("userid");
out.println(docid);
out.println(docname);
out.println(frmid);
out.println(toid);
out.println(atach);
out.println(adate);
out.println(ddate);

%>
<%
//String path=request.getParameter("ooad");
String atach1="C:/sangi/"+atach;
out.println(atach1);
File f=new File(atach1);
FileInputStream fis=new FileInputStream(f);

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select docid from document where docid='"+docid+"'");
if(rs.next())
{
%>
<h2></i>File Already Exist</i></h2>
<%@ include file="clientdocout.jsp"%>
<%
}
else
{
PreparedStatement pst=con.prepareStatement("insert into document(docid,docname,cid,eid,docin,postdate,duedate,archive) values(?,?,?,?,?,?,?,?)");
pst.setString(1,docid);
pst.setString(2,docname);
pst.setString(3,frmid);
pst.setString(4,toid);
pst.setBinaryStream(5,fis,(int)f.length());
pst.setString(6,adate);
pst.setString(7,ddate);
pst.setString(8,"No");
pst.executeUpdate();
out.println("file inserted");
%>
<h1>
FILE INSERTED SUCCESSFULLY
</h1>
<br>
<%
}

}catch(Exception e)
{
out.println(e);
}
%>
Click &nbsp;<a href="clientdocview.jsp">Here</a>&nbsp; to view Documents
</body>
</html>