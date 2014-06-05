<html>

<HEAD>

<script language="JavaScript">

// big() makes selected layer longer (height property)

function big(lyr) {

document.all[lyr].style.height='180px'; }

/* small() makes selected layer shorter (height property)*/
function small(lyr) {

document.all[lyr].style.height='32px';

}

/* start() makes all layers short to start with (height property)*/

function start() {

document.all.Layer1.style.height='32px';

document.all.Layer2.style.height='32px';

document.all.Layer3.style.height='32px';

document.all.Layer4.style.height='32px';

document.all.Layer5.style.height='32px';

document.all.Layer6.style.height='32px';

document.all.layer7.style.height='32px';

document.all.layer8.style.height='32px';
}
</script>
<%@ include file="connection.jsp"%>
<%!
String s,taskid,taskdesc,skills,assign,r1,r2;
%>
<%
try{
String userid=(String)session.getAttribute("userid");
taskid=request.getParameter("taskid");
taskdesc=request.getParameter("taskdesc");
skills=request.getParameter("skills");
assign=request.getParameter("assign");
if(taskid==null)
{
taskid=taskdesc=skills=assign="";
}
if(assign.equals("nxt"))
{
r1="checked";
r2="";
}
else
{
r1="";
r2="checked";
}
Statement st=con.createStatement();
if(assign.equals("nxt"))
{
s="select * from employee where aid='"+userid+"'";
}
else
{
s="select * from employee where eid='"+userid+"'";
}
//out.println(s);
ResultSet rs=st.executeQuery(s);
//out.println(rs);
%>
</HEAD>
<head>
<center>
<font size="6" face="times new roman" color="black">OFFICE AUTOMATION TOOL
</center>
</head>
<script>
function fun1(i)
{
//document.write(i);
if(i=="self")
{
var i=document.myform.taskid.value;
var j=document.myform.taskdesc.value;
var k=document.myform.SKILLS[document.myform.SKILLS.selectedIndex].text;
window.location.replace("task.jsp?taskid="+i+"&&taskdesc="+j+"&&skills="+k+"&&assign=self");

}
else
{
var i=document.myform.taskid.value;
var j=document.myform.taskdesc.value;
var k=document.myform.SKILLS[document.myform.SKILLS.selectedIndex].text;
window.location.replace("task.jsp?taskid="+i+"&&taskdesc="+j+"&&skills="+k+"&&assign=nxt");
}
}
</script>

<br>
<br>
<br>
<body onLoad="select();start();">



<script>
function select()
{
for(var i=0;i<document.myform.SKILLS.length;i++)
{
if(document.myform.SKILLS[i].text=="<%=skills%>")
	document.myform.SKILLS.selectedIndex=i;
}
for(var i=0;i<document.myform.toid.length;i++)
{
if(document.myform.toid[i].text=="<%=userid%>")
	document.myform.toid.selectedIndex=i;
}

}
</script>
<body bgcolor="turquoise" >
<br>
<div id="Layer1" style="position:absolute; width:74x; height:180px; z-index:1; left: 120px; top: 80px; background-color:; layer-background-color: #FFFFCC; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer1')"; onMouseOut="small('Layer1')"> 


  <div align="center">
    <a href="home1.jsp"><font size="4" face="times new roman" color="black">HOME</a></div>

</div>

<div id="Layer2" style="position:absolute; width:100px; height:180px; z-index:1; left: 210px; top: 80px; background-color:; layer-background-color: #FFFFCC; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer2')"; onMouseOut="small('Layer2')"> 

  <div align="center">

    <a href="home1.jsp"><font size="4" face="times new roman" color="black">EMPLOYEE</a>
    <br>     
    <a href="empd.jsp"><font size="4" face="times new roman" color="black">UPDATE</a>
<br>
<br>
<a href="empview.jsp"><font size="4" face="times new roman" color="black">VIEW</a>

</div>
</div>
<div id="Layer3" style="position:absolute; width:220px; height:180px; z-index:1; left:290px; top: 80px; background-color:; layer-background-color: #FFFFCC; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer3')"; onMouseOut="small('Layer3')"> 

  <div align="center">
    <a href="docview.jsp"><font size="4" face="times new roman" color="black">DOCUMENT</a><br>
    <br>
    <br>
    </div>
</div>
<div id="Layer4" style="position:absolute; width:195px; height:180px; z-index:1; left: 420px; top: 80px; background-color:; layer-background-color:#FFFFCC ; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer4')"; onMouseOut="small('Layer4')"> 

  <div align="center">
    <a href=""><font size="4" face="times new roman" color="black">TASK</a><br>
    <br>      
    <a href="task.jsp"><font size="4" face="times new roman" color="black">ASSIGN</a>
    <br>
    <br> 
    <a href="taskview.jsp"><font size="4" face="times new roman" color="black">VIEW</a>

</div>
</div>

<div id="Layer5" style="position:absolute; width:220px; height:300px; z-index:1; left: 510px; top: 80px; background-color:;layer-background-color:#FFFFCC ; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer5')"; onMouseOut="small('Layer5')"> 

  <div align="center">

    <a href="archiveview.jsp"><font size="4" face="times new roman" color="black">ARCHIVE</a>
  
</div>
</div>

<div id="Layer6" style="position:absolute; width:195px; height:180px; z-index:1; left: 690px; top: 80px; background-color:; layer-background-color:#FFFFCC ; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer6')"; onMouseOut="small('Layer6')"> 

  <div align="center">
 
 <a href="changepaswd.jsp"><font size="4"  face="times new roman" color="black">CHANGE PASSWORD</a>
</div>
</div>

<div id="Layer7" style="position:absolute; width:195px; height:180px; z-index:1; left: 870px; top: 80px; background-color:; layer-background-color:#FFFFCC ; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer7')"; onMouseOut="small('Layer7')"> 

  <div align="center">
    <a href="reminders.jsp"><font size="4" face="times new roman" color="black">REMINDER</a>
</div>
</div>

<div id="Layer8" style="position:absolute; width:195px; height:180px; z-index:1; left: 990px; top: 80px; background-color:; layer-background-color:#FFFFCC ; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer8')"; onMouseOut="small('Layer8')"> 

  <div align="center">

    <a href="logout.jsp"><font size="4" face="times new roman" color="black">LOGOUT</a>
</div>
</div>

<body bgcolor="turquoise">
<%
String eid=(String)session.getAttribute("employee");
%>
<center>
<form action="taskasgn.jsp" name="myform">
<table border="1">
<tr>
<td><font size="4" face="times new roman" color="black">TASK ID</td>
<td> <input type="text" name="taskid" value="<%=taskid%>"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">TASK DESCRIPTION</td>
<td><textarea rows="2" name="taskdesc" cols="20"/><%=taskdesc%></textarea></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">SKILLS</td>
<td><select name="SKILLS"><option>Select</option><option>Java</option><option>.NET</option><option>C++</option>
</select>
</td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">ASSIGN TO</td>
<td><input type="radio" name="r1" value="nxt" onClick="fun1(document.myform.r1[0].value)" <%=r1%>/>NEXT LEVEL
<font size="4" face="times new roman" color="black"><input type="radio" name="r1" value="self" onClick="fun1(document.myform.r1[1].value)" <%=r2%>/>SELF ASSIGNMENT</td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">FROM ID</td>
<td> <input type="text" name="fromid" value="<%=userid%>"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">TO ID</td>
<td> <select name="toid"/><option>Select</option>
<%

while(rs.next())
{
%>
<option><%=rs.getString(1)%></option>
<%
}
}
catch(Exception e)
{
out.println(e);
}
%>
</td>
</tr>

<tr>
<td><font size="4" face="times new roman" color="black">POST DATE</td>
<td><select name="day">
<%
for(int i=1;i<=31;i++)
{
%>
<option><%=i%></option>
<%
}%>
</select>
<select name="month"><option>Jan</option><option>Feb</option><option>Mar</option><option>Apr</option><option>May</option><option>Jun</option><option>Jul</option><option>Aug</option><option>Sep</option><option>Oct</option><option>Nov</option><option>Dec</option></select>
<select name="year">
<%
for(int i=1990;i<=2100;i++)
{
%>
<option><%=i%></option>
<%
}%>
</select>
</td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">DUE DATE</td>
<td><select name="days">
<%
for(int i=1;i<=31;i++)
{
%>
<option><%=i%></option>
<%
}%>
</select>
<select name="months">
<option>Jan</option><option>Feb</option><option>Mar</option><option>Apr</option><option>May</option><option>Jun</option><option>Jul</option><option>Aug</option><option>Sep</option><option>Oct</option><option>Nov</option><option>Dec</option></select>
<select name="years">
<%
for(int i=1990;i<=2100;i++)
{
%>
<option><%=i%></option>
<%
}%>
</select>
</td>
</tr>



<tr>
</tr>
<tr>
</tr>
<tr>
<td><input type="submit" value="ASSIGN"/></td>
<td><input type="button" value="CANCEL"onClick="window.navigate('home1.jsp')"/></td>
</tr></td>
</tr>
</table>
</form>
</center>
</body>
</html>