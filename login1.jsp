<%@ include file="conn.jsp"%>
<%! String s,p,role;
%>
<% s=request.getParameter("uid");
p=request.getParameter("pwd");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from login where userid='"+s+"' and password='"+p+"'");
if(rs.next())
{
role=rs.getString("role");
session.setAttribute("userid",s);
session.setAttribute("role",role);
if(role.equals("admin"))
{
%>
<jsp:forward page="adminhome.jsp"/>
<%
}
else if(role.equals("employee"))
{
%>
<jsp:forward page="home1.jsp"/>
<%
}
else if(role.equals("client"))
{
%>
<jsp:forward page="clienthome.jsp"/>
<%
}
}
else
{
%>
USER INVALID
<%@ include file="login.jsp"%>
<%
}
%>
