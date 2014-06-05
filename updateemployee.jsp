<%@ include file="conn.jsp"%>
<%! String
eid,ename,gender,empaddress,desgname,aid,expskills,deptid,emailid,date,dates;
int phone;
%>
<%try{
eid=request.getParameter("eid");
ename=request.getParameter("ename");
empaddress=request.getParameter("eaddr");
deptid=request.getParameter("deptno");
aid=request.getParameter("aid");
phone=request.getParameter("ephne");
emailid=request.getParameter("emailid");
expskills=request.getParameter("expskills");
out.println(eid);
out.println(ename);
out.println(empaddress);
out.println(phone);
out.println(emailid);
out.println(deptid);
out.println(aid);
out.println(expskills);

PreparedStatement pst=con.prepareStatement("update employee set 
ename=?,employee_address=?,authority_id=?,phone=?,email_id=?,expert_skills=? where employee_id='"+eid+"'");
pst.setString(1,ename);
pst.setString(2,empaddress);
pst.setString(3,aid);
pst.setString(4,phone);
pst.setString(5,emailid);
pst.setString(6,expskills);
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
<a href="empd.jsp">UPDATE ANOTHER EMPLOYEE
</a>
