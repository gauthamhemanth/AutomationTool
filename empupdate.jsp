
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

</HEAD>
<head>
<center>
<font size="6" face="times new roman" color="black">OFFICE AUTOMATION TOOL
</center>
</head>
<br>
<br>
<BODY onLoad="start()">
<body bgcolor="turquoise">
<br>
<br>
<div id="Layer1" style="position:absolute; width:74x; height:180px; z-index:1; left: 120px; top: 80px; background-color:; layer-background-color: #FFFFCC; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer1')"; onMouseOut="small('Layer1')"> 


  <div align="center">
    <a href="home1.jsp"><font size="4" face="times new roman" color="black">HOME</a></div>

</div>

<div id="Layer2" style="position:absolute; width:100px; height:180px; z-index:1; left: 210px; top: 80px; background-color:; layer-background-color: #FFFFCC; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer2')"; onMouseOut="small('Layer2')"> 

  <div align="center">

    <a href=""><font size="4" face="times new roman" color="black">EMPLOYEE</a>

    <br>
    
    <a href="empd.jsp"><font size="4" face="times new roman" color="black">UPDATE</a>
<br>
<br>
<a href="empview.jsp"><font size="4" face="times new roman" color="black">VIEW</a>

</div>
</div>
<div id="Layer3" style="position:absolute; width:220px; height:180px; z-index:1; left:290px; top: 80px; background-color:; layer-background-color: #FFFFCC; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer3')"; onMouseOut="small('Layer3')"> 

  <div align="center">
    <a href="docview.jsp"><font size="4" face="times new roman" color="black">DOCUMENT</a>


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

<div id="Layer7" style="position:absolute; width:215px; height:180px; z-index:1; left: 850px; top: 80px; background-color:; layer-background-color:#FFFFCC ; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer7')"; onMouseOut="small('Layer7')"> 

  <div align="center">
    <a href="reminders.jsp"><font size="4" face="times new roman" color="black">REMINDER</a>
 
</div>
</div>

<div id="Layer8" style="position:absolute; width:195px; height:180px; z-index:1; left: 970px; top: 80px; background-color:; layer-background-color:#FFFFCC ; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer8')"; onMouseOut="small('Layer8')"> 

  <div align="center">

    <a href="logout.jsp"><font size="4" face="times new roman" color="black">LOGOUT</a>
</div>
</div>

</body>
</html>
<%@ include file="conn.jsp"%>
<%! String
eid,ename,gender,empaddress,desgname,aid,expskills,deptid,r1,r2,emailid,date,dates,phone;
%>
<%
eid=request.getParameter("eid");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from employee where eid='"+eid+"'");
if(rs.next())
{
ename=rs.getString(2);
empaddress=rs.getString(3);
gender=rs.getString(4);
deptid=rs.getString(5);
desgname=rs.getString(6);
aid=rs.getString(7);
phone=rs.getString(8);
emailid=rs.getString(9);
expskills=rs.getString(10);
date=rs.getString(11);
dates=rs.getString(12);
}
else
{
ename=empaddress=gender=deptid=phone=desgname=emailid=expskills=aid=date=dates="";
}
if(gender.equals("male"))
{
r1="checked";
r2="";
}
else
{
r1="";
r2="checked";
}
%>
<html>
<head>
<center>
<font size="6" face="times new roman" color="black"EMPLOYEE DETAILS
</center>
</head>
<BODY onLoad="select()">
<script>
function select()
{
for(var i=0;i<document.myform.designame.length;i++)
{
if(document.myform.designame[i].text=="<%=desgname%>")
document.myform.designame.selectedIndex=i;
}
}
</script>

<body bgcolor="turquoise"> 
<center>
<form action="updateemp.jsp" name="myform"> 
<table border="1">
<tr>
<td><font size="4" face="times new roman" color="black">EMPLOYEE ID</td>
<td><input type="text" name="eid" value="<%=eid%>" disabled /></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">EMPLOYEE NAME</td>
<td><input type="text" name="ename" value="<%=ename%>"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">GENDER</td>
<td><input type="radio" name="r1" value="male" <%=r1%> disabled/>MALE
<font size="4" face="times new roman" color="black"><input type="radio" name="r1" value="female" <%=r2%> disabled/>FEMALE</td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">EMPLOYEE ADDRESS</td>
<td><textarea rows="2" name="eaddr" cols="20"/><%=empaddress%></textarea>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">DEPARTMENT ID</td>
<td><input type="text" name="deptno" value="<%=deptid%>"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">DESIGNATION NAME</td>
<td><select name="designame"><option>GM</option><option>DGM</option><option>SM</option><option>TO</option> value="<%=desgname%></select></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">AUTHORITY ID</td>
<td><input type="text" name="aid" value="<%=aid%>"</td>
</td>
</tr>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">PHONE</td>
<td><input type="text" name="ephne" value="<%=phone%>"/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">EMAIL ID</td>
<td><input type="text" name="emailid" value="<%=emailid%>" /></td>
<tr>
<td><font size="4" face="times new roman" color="black">EXPERT SKILLS</td>
<td><input type="text" name="expskills" value="<%=expskills%>" /></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">DATE OF BIRTH</td>
<td><input type="text" name="date" value="<%=date%>" disabled/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">DATE OF JOIN</td>
<td><input type="text" name="dates" value="<%=dates%>" disabled/></td>
</tr>

<tr>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
</tr>
<td>
<input type="hidden" name="eid" value="<%=eid%>" /></td>
<td><input type="submit" value="UPDATE"/></td>
<td><input type="button" value="CANCEL" onClick="window.navigate('empd.jsp')"/></td>
</tr>
</table>
</form>
</center>
</body>
</html>