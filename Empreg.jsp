<%@ include file="conn.jsp"%>
<%! String eid,ename,eaddr,gender,desgname,emailid,expskills,date,day,month,year,days,months,years,dates,aid;
int deptno,ephne;
%>
<% try{
eid=request.getParameter("eid");
ename=request.getParameter("ename");
eaddr=request.getParameter("eaddr");
gender=request.getParameter("r1");
deptno=Integer.parseInt(request.getParameter("deptno"));
desgname=request.getParameter("desgname");
aid=request.getParameter("aid");
ephne=Integer.parseInt(request.getParameter("ephne"));
emailid=request.getParameter("emailid");
expskills=request.getParameter("expskills");
day=request.getParameter("day");
month=request.getParameter("month");
year=request.getParameter("year");
date=day+"-"+month+"-"+year;

days=request.getParameter("days");
months=request.getParameter("months");
years=request.getParameter("years");
dates=days+"-"+months+"-"+years;
/*
out.println(eid);
out.println(ename);
out.println(eaddr);
out.println(gender);
out.println(deptno);
out.println(desgname);
out.println(aid);
out.println(ephne);
out.println(emailid);
out.println(expskills);
out.println(date);
out.println(dates);
*/
%>
<%
PreparedStatement pst=con.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?,?,?,?,?)");
pst.setString(1,eid);
pst.setString(2,ename);
pst.setString(4,gender);
pst.setString(3,eaddr);
pst.setInt(5,deptno);
pst.setString(6,desgname);
pst.setString(7,aid);
pst.setInt(8,ephne);
pst.setString(9,emailid);
pst.setString(10,expskills);
pst.setString(11,date);
pst.setString(12,dates);
int k=pst.executeUpdate();
out.println("rows inserted:"+k);

pst=con.prepareStatement("insert into login values(?,?,?)");
pst.setString(1,eid);
pst.setString(2,ename);
pst.setString(3,"employee");
pst.executeUpdate();

}catch(Exception e)
{
out.println(e);
}
%>
INSERTED SUCCESSFULLY
<br>
<a href="aempd.jsp">INSERT ANOTHER EMPLOYEE
</a>

