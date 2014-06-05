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

document.all.Layer6.style.height='32px'; }


</script>

</HEAD>


<BODY onLoad="start()">
<body bgcolor="wheat">
<br>
<div id="Layer1" style="position:absolute; width:74x; height:180px; z-index:1; left: 50px; top: 38px; background-color:; layer-background-color: #FFFFCC; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer1')"; onMouseOut="small('Layer1')"> 

  <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif">

    <a href="HOME.jsp">Home</a></div>

</div>

<div id="Layer2" style="position:absolute; width:220px; height:180px; z-index:1; left: 100px; top: 38px; background-color: ; layer-background-color: #FFFFCC; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer2')"; onMouseOut="small('Layer2')"> 

  <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif">

    <a href="employee details.jsp">Employee Details</a></div>

</div>

<div id="Layer3" style="position:absolute; width:155px; height:180px; z-index:1; left: 300px; top: 38px; background-color:; layer-background-color: #FFFFCC; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer3')"; onMouseOut="small('Layer3')"> 

  <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif">

    <a href="">AnnualReports</a><br>

    <br>

    <a href="accountdetails.jsp">AccountDetails</a><br>	
    <br>

    <a href="loss&profits.jsp">Loss&Profits</a><br></div>
</div>
<div id="Layer4" style="position:absolute; width:195px; height:180px; z-index:1; left: 480px; top: 38px; background-color:; layer-background-color:#FFFFCC ; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer4')"; onMouseOut="small('Layer4')"> 

  <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif">

    <a href="">Research&Development</a><br>

    <br>

    <a href="R&D.jsp">R&D Papers</a><br></div>
</div>
<div id="Layer5" style="position:absolute; width:195px; height:180px; z-index:1; left: 680px; top: 38px; background-color:; layer-background-color:#FFFFCC ; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer5')"; onMouseOut="small('Layer5')"> 

  <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif">

    <a href="events.jsp">Events&News</a><br></div>
</div>
<div id="Layer6" style="position:absolute; width:195px; height:180px; z-index:1; left: 800px; top: 38px; background-color:; layer-background-color:#FFFFCC ; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer6')"; onMouseOut="small('Layer6')"> 

  <div align="center"><font face="Verdana, Arial, Helvetica, sans-serif">

    <a href="login.jsp">SignOut</a><br></div>
</div>
<body bgcolor="wheat">
<center>
<table>
<br>
<br>
<br>
<br>
<br>
<br>
<tr>
<td>EmpID</td>
<td><input type="text" name="empid"/>&nbsp;&nbsp;&nbsp;<a href="Attendence.jsp"/>Attendence</a> &nbsp;<a href="Leave.jsp"/>Leave</a>
</tr>
<tr>
<td>Emp name</td>
<td><input type="text"name="empname"/></td>
</tr>
<tr>
<td>Gender</td>
<td><input type="radio" name="Gender" value="r1"/>male<input type="radio" name="Gender" value="r1"/>female</td></tr>
<tr>
<td>Designation</td>
<td><input type="text"name="Designation"/></td>
</tr>
<tr>
<td>Departmant</td>
<td><input type="text"name="Department"/></td>
</tr>
<tr>
<td>Join date</td>
<td>
<select name="day"> 
<%
for(int i=1;i<=31;i++)
{
%>
<option><%=i%></option>
<%
}
%>
</select>
<select><option>Jan</option><option>Feb</option><option>Mar</option><option>Apr</option><option>May</option><option>Jun</option><option>Jul</option><option>Aug</option><option>Sep</option><option>Oct</option><option>Nov</option><option>Dec</option></select>
<select name="year">
<%
for(int i=2000;i<=2012;i++)
{
%>
<option><%=i%></option>
<%
}%></td>
</tr>
<tr>
<td>Empaddress</td>
<td><select name="Empaddress" size="3"><option>Enter your address&nbsp;&nbsp;&nbsp;</option></select></td>
</tr>
<tr>
<td>Phonenumber</td>
<td><input type="text"name="Phonenumber"/></td>
</tr>
<tr>
<td>EmailID</td>
<td><input type="text"name="EmailID"/></td>
</tr>
<tr>
<td>Salary</td>
<td><input type="text"name="Salary"/></td>
</tr>
<tr>
<td>Experience</td>
<td><input type="text"name="Experience"/></td>
</tr>
<tr>
<td>Expertskills</td>
<td><input type="text"name="Expertskills"/></td>
</tr>
<tr>
<table>
<br>
<br>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="add"/></td><td>&nbsp;&nbsp;
<input type="button"value="update"/>&nbsp;&nbsp;&nbsp&nbsp;
<input type="button"value="delete"/></td>
</table>
</tr>
</center>
</font>
</table>
</body>
</html>