<%@ include file="conn.jsp"%>
<%!String
cid,clientname,clientaddress,email_id;
int phone;
%>
<%try{
cid=request.getParameter("cid");
clientname=request.getParameter("cname");
clientaddress=request.getParameter("caddr");
phone=Integer.parseInt(request.getParameter("cphone"));
email_id=request.getParameter("cemail");
out.println(cid);
out.println(clientname);
out.println(clientaddress);
out.println(phone);
out.println(email_id);

PreparedStatement pst=con.prepareStatement("update client set cname=?,caddr=?,cphone=?,cemail=? where cid='"+cid+"'");
pst.setString(1,clientname);
pst.setString(2,clientaddress);
pst.setInt(3,phone);
pst.setString(4,email_id);
int k=pst.executeUpdate();
out.println("rows updated:"+k);
}
catch(Exception e)
{
out.println(e);
}
%>
UPDATED SUCCESSFULLY
<br>
<a href="updatecdetails.jsp">RE-UPDATE CLIENT
</a>
