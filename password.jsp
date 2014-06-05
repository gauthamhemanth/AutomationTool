<%@ include file="conn.jsp"%>
<%!String
uid,pwd,opwd,newpwd,rpwd;
%>
<%
try
{
uid=(String)session.getAttribute("userid");
opwd=request.getParameter("opwd");
newpwd=request.getParameter("npwd");
rpwd=request.getParameter("rpwd");
out.println(uid);
/*out.println(opwd);
out.println(newpwd);
out.println(rpwd);*/
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from login where userid='"+uid+"'");
if(rs.next())
{
pwd=rs.getString(2);
//out.println(pwd);
}
//out.println(opwd+"-"+pwd);
if(opwd.equals(pwd))
{
PreparedStatement pst=con.prepareStatement("update login set password=? where userid='"+uid+"'");
pst.setString(1,newpwd);
int k=pst.executeUpdate();
out.println("rows updated:"+k);
%>
CHANGED SUCCESSFULLY
<%
}
else
{
out.println("match not found");
}
}
catch(Exception e)
{
out.println(e);
}
%>
