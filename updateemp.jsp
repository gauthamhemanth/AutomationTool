<%@ include file="conn.jsp"%>
<%!String
eid,ename,eaddr,deptid,desgname,aid,phone,email,expskills;
%>
<%
try{
eid=request.getParameter("eid");
ename=request.getParameter("ename");
eaddr=request.getParameter("eaddr");
deptid=request.getParameter("deptno");
desgname=request.getParameter("designame");
aid=request.getParameter("aid");
phone=request.getParameter("ephne");
email=request.getParameter("emailid");
expskills=request.getParameter("expskills");

out.println(eid);
out.println(ename);
out.println(eaddr);
out.println(deptid);
out.println(desgname);
out.println(aid);
out.println(phone);
out.println(email);
out.println(expskills);
PreparedStatement pst=con.prepareStatement("update employee set ename=?,eaddr=?,div_id=?,desgname=?,aid=?,ephne=?,emailid=?,expskills=? where eid='"+eid+"'");
pst.setString(1,ename);
pst.setString(2,eaddr);
pst.setString(3,deptid);
pst.setString(4,desgname);
pst.setString(5,aid);
pst.setString(6,phone);
pst.setString(7,email);
pst.setString(8,expskills);
int k=pst.executeUpdate();
out.println("rows updated:"+k);

}
catch(Exception e)
{
out.println(e);
}
%>
UPDATE SUCCESSFUL