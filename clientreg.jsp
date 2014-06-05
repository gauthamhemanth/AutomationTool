<%@ include file="conn.jsp"%>
<%! String 
cid,cname,caddr,cemail,cphone;
%>
<% try{
cid=request.getParameter("cid");
cname=request.getParameter("cname");
caddr=request.getParameter("caddres");
cemail=request.getParameter("cemail");
cphone=request.getParameter("cphone");
%>
<%
PreparedStatement pst=con.prepareStatement("insert into client values(?,?,?,?,?)");
pst.setString(1,cid);
pst.setString(2,cname);
pst.setString(3,caddr);
pst.setString(4,cemail);
pst.setString(5,cphone);
int k=pst.executeUpdate();
out.println("rows inserted:"+k);
pst=con.prepareStatement("insert into login values(?,?,?)");
pst.setString(1,cid);
pst.setString(2,cname);
pst.setString(3,"client");
pst.executeUpdate();

}catch(Exception e)
{
out.println(e);
}
%>
INSERTED SUCCESSFULLY
<br>
<a href="cdetails.jsp">INSERT ANOTHER CLIENT
</a>

