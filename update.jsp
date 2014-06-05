<%@ include file="conn.jsp"%>
<%!String
status,tid;
%>
<%
status=request.getParameter("status");
tid=request.getParameter("taskid");
PreparedStatement pst=con.prepareStatement("update task set status='"+status+"' where taskid='"+tid+"'");
pst.executeUpdate();
pst=con.prepareStatement("insert into report(taskid,reportdes,reportdate,status) values(?,?,sysdate,?)");
pst.setString(1,tid);
pst.setString(2,status);
pst.setString(3,"new");
pst.executeUpdate();
%>
<jsp:forward page="taskview.jsp"/>






