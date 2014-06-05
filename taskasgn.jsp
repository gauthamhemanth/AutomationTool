<%@ include file="connection.jsp"%>
<%! String
taskid,taskdesc,toid,fromid,skills,date,dates,day,asignto,month,year,months,days,years;
%>
<%
try
{
taskid=request.getParameter("taskid");
taskdesc=request.getParameter("taskdesc");
fromid=request.getParameter("fromid");
toid=request.getParameter("toid");
asignto=request.getParameter("r1");
skills=request.getParameter("SKILLS");
day=request.getParameter("day");
month=request.getParameter("month");
year=request.getParameter("year");
date=day+"-"+month+"-"+year;

days=request.getParameter("days");
months=request.getParameter("months");
years=request.getParameter("years");
dates=days+"-"+months+"-"+years;
/*
out.println(taskid);
out.println(taskdesc);
out.println(fromid);
out.println(toid);
out.println(asignto);
out.println(date);
out.println(dates);
*/
%>
<%	
PreparedStatement pst=con.prepareStatement("insert into task values(?,?,?,?,?,?,?,?,?)");
pst.setString(1,taskid);
pst.setString(2,taskdesc);
pst.setString(9,skills);
pst.setString(7,asignto);
pst.setString(3,toid);
pst.setString(4,fromid);
pst.setString(5,date);
pst.setString(6,dates);
pst.setString(8,"NEW");
int k=pst.executeUpdate();
out.println("rows inserted:"+k);
}
catch(Exception e)
{
out.println(e);
}

%>
ASSIGNED SUCCESSFULLY

