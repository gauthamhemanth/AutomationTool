<%@ include file="conn.jsp"%>
<%!
String eid,name,dept,desig1,s,str,desig;
%>
<%try
{
eid=request.getParameter("eid");
name=request.getParameter("name");
dept=request.getParameter("dept");
desig=request.getParameter("desig");
out.println(eid+"--"+name+"--"+dept+"--"+desig);
if(eid==null||name==null)
{
eid=name=desig=dept="";
}

Statement st1=con.createStatement();
if(desig!=null)
{
str="select * from designation where designation="+desig+"'";
}
ResultSet rs1=st1.executeQuery(str);
if(rs1.next())
{
desig1=rs1.getString(3);
}
rs1.close();
//out.println("<br>"+desig1);
if(desig1==null)
           desig1="";
if(desig1.equals("admin"))
{
s="select*from emp where designation="+desig1;
}
else
{
s="select*from emp where designation='"+desig1+"' and dept='"+dept+"'";
}
//out.println(s);
%>
<html>
<script>
function selectdesig(formObj)
{
var i=formObj.eid.value;
var j=formObj.name.value;
var k=formObj.dept[formObj.dept.selectedIndex].text]; 
var l=formObj.dept[formObj.desig.selectedIndex].text];
//document.write(i+"--"+j+"--"+k);
window.location.replace("registration.jsp?eid="+i+"&&name="+j+"&&dept="+k+"&desig="+l+");
}
</script>
<body onload="select()">
<script>
fucntion select()
{
document.myform.eid.value=<%=eid%>";
document.myform.name.value=<%=name%>";
for(var j=0;j<document.myform.dept.length;j++)
{
if(document.myform.dept+[j].text==<%=dept%>")
document.myform.dept.selectedIndex=j;
}
for(var i=0;i<document.myform.desig.length;i++)
{
ifdocument.myform.desig[i].text=="<%=desig%>"
document.myform.desig.selectedIndex=i;
}
}
function setclear()
{
document.myform.eid.value="";
document.myform.name.value="";
document.myform.desig.selectedIndex=();
document.myform.ha.selectedIndex=();
document.myform.dob.value="";
document.myform.qua.value="";
document.myform.gender[0].checked=false;
document.myform.gender[1].checked=false;
document.myform.dept.value="";
document.myform.phno.value="";
document.myform.email.value="";
document.myform.skills.selectedIndex=();
document.myform.doj.value="";
document.myform.role.selectedIndex=();
}
</script>
<form name="myform" action="registration.jsp">
<center>
<table>
<tr>
<td>ID</td>
<td><input type="text" name="eid"></td>
</tr>
<tr>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>Department</td>
<td>select name="dept">
<option>--Select--</option>
<option>ISD</option>
<option>SED</option>
<option>CED</option>
<option>SPD</option>
<option>SSD</option>
<option>CAD</option>
</SELECT>
</td>
<tr><td>Designation</td>
<td><select name="desig" onBlur="selectdesig(document.myform)">
<option>--Select--</option>
<%
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from designation");
while(rs.next())
{
%>
<option><%=rs.getString(2)%></option>
<%
}
%>
</td>
</tr>

<tr>
<td>Higher Authority</td>
<td>select name="ha">
 <option>--Select --</option>
<%
rs1=st1.executeQuery(s);
while(rs1.next())
{
%>
<option><%=rs1.getString(2)%></option>
<%
}
}
catch(Exception e)
{
out.println(e);
}
%>
</select>
</td>
</tr>
<tr>
<td>DOB</td>
<td>input type="text" name="dob"></td><td>(Ex:2011-04-28)</td>
</tr>
<td>Qualification</td>
<td><input type="text" name="qua"></td>
</tr>
<tr>
<td>
Gender</td>
<td>

input type="radio" name="gender" value="male">Male &nbsp;

input type="radio" name="gender" value="female">Female</td>
</tr>
<tr>
<td>
email</td>
<td><input type="text" name="email"></td> 
</tr>
<tr>
<td>Skills</td>
<td>select name="skills">
<option>--Select--</option>
<option>Java</option>
<option>.Net</option>
<option>C++</option>
</select>
</td>
</tr>
<tr>
<td>DOJ</td>
<td>input type="text" name="doj"></td>(Ex:2011-04-28)</td>
</tr>
<tr>
<td>Role</td>
<td>
select name="role">
<option>--Select--</option>
<option>Employee</option>
<option>Client</option>
</select>
</td>
</tr>
<tr>
<td><td></td>`
<td>inputtype="submit" value="Add">
<input type="button" value="clear" onClick="setclear()"></td>
</tr>
</table>
</form>
</center>
</body>
</html>



