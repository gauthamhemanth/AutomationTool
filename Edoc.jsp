<%@ include file="conn.jsp"%>
<html>
<head>
<center>
<font size="6" face="times new roman" color="black">OFFICE AUTOMATION TOOL
</center>
</head>
<br>
<br>
<br>

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
<BODY onLoad="start()">
<body bgcolor="turquoise">
<br>
<br>
<div id="Layer1" style="position:absolute; width:74x; height:180px; z-index:1; left: 120px; top: 80px; background-color:; layer-background-color: #FFFFCC; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer1')"; onMouseOut="small('Layer1')"> 


  <div align="center">
    <a href="1.jsp"><font size="4" face="times new roman" color="black">HOME</a></div>

</div>

<div id="Layer2" style="position:absolute; width:100px; height:180px; z-index:1; left: 210px; top: 80px; background-color:; layer-background-color: #FFFFCC; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer2')"; onMouseOut="small('Layer2')"> 

  <div align="center">

    <a href=""><font size="4" face="times new roman" color="black">EMPLOYEE</a>

    <br>
    
    <a href="empd.jsp"><font size="4" face="times new roman" color="black">UPDATE</a>
</div>
</div>
<div id="Layer3" style="position:absolute; width:220px; height:180px; z-index:1; left:290px; top: 80px; background-color:; layer-background-color: #FFFFCC; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer3')"; onMouseOut="small('Layer3')"> 

  <div align="center">
    <a href=""><font size="4" face="times new roman" color="black">DOCUMENT</a><br>
    <br>

    <a href="Edoc.jsp"><font size="4" face="times new roman" color="black">ASSIGN</a>
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

    <a href=""><font size="4" face="times new roman" color="black">ARCHIVE</a>
    <br>
    <br>
    <a href="archiveview.jsp"><font size="4" face="times new roman" color="black">VIEW</a>
</div>
</div>

<div id="Layer6" style="position:absolute; width:195px; height:180px; z-index:1; left: 690px; top: 80px; background-color:; layer-background-color:#FFFFCC ; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer6')"; onMouseOut="small('Layer6')"> 

  <div align="center">
    <a href="changepaswd.jsp"><font size="4"  face="times new roman" color="black">CHANGE PASSWORD</a>
</div>
</div>

<div id="Layer7" style="position:absolute; width:215px; height:180px; z-index:1; left: 850px; top: 80px; background-color:; layer-background-color:#FFFFCC ; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer7')"; onMouseOut="small('Layer7')"> 

  <div align="center">
    <a href=""><font size="4" face="times new roman" color="black">REMINDER</a>
 
    <br>   
    <br>

    <a href="ereminder.jsp"><font size="4" face="times new roman" color="black">SET</a>
    <br>
    <br>

    <a href="reminderview.jsp"><font size="4" face="times new roman" color="black">VIEW</a>

</div>
</div>

<div id="Layer8" style="position:absolute; width:195px; height:180px; z-index:1; left: 970px; top: 80px; background-color:; layer-background-color:#FFFFCC ; border: 1px none #000000; overflow: hidden" onMouseOver="big('Layer8')"; onMouseOut="small('Layer8')"> 

  <div align="center">

    <a href="logout.jsp"><font size="4" face="times new roman" color="black">LOGOUT</a>
</div>
</div>
</head>
<body bgcolor="turquoise">
<center>
<%!
String docinname;
Date postdate;
Date duedate;
String clientid;
%>
<%
try{
String empid=(String)session.getAttribute("userid");
String docid=request.getParameter("docid");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from document where docid='"+docid+"'");
if(rs.next())
{
docinname=rs.getString(9);
postdate=rs.getDate(5);
duedate=rs.getDate(6);
clientid=rs.getString(2);
}
//out.println(docinname+"-"+postdate+"-"+duedate+"-"+clientid);
%>
<form action="employeedoc.jsp">
<table border="1">
<tr>
<td><font size="4" face="times new roman" color="black">DOC ID</td>
<td> <input type="text" name="docid" value="<%=docid%>" disabled /></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">TO ID</td>
<td> <input type="text" name="clientid" value="<%=clientid%>" disabled/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">FROM ID</td>
<td> <input type="text" name="eid" value="<%=empid%>" disabled/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">POST DATE</td>
<td> <input type="text" name="postdate" value="<%=postdate%>" disabled/></td>
</tr>
<tr>
<td><font size="4" face="times new roman" color="black">DUE DATE</td>
<td> <input type="text" name="duedate" value="<%=duedate%>" disabled/></td>
</tr>
<tr>
<td>CLIENT DOCUMENT</td>
<td>
<a href="C:/Program Files/Apache Software Foundation/Tomcat 5.5/webapps/OAT/files/<%=docinname%>.doc"
onClick="window.open('files/'+'<%=docinname%>'+'.doc');"><%=docinname%></a>
</td>
<tr>
<td><font size="4" face="times new roman" color="black">DOCUMENT NAME</td>
<td> <input type="text" name="docoutname"  /></td>
</tr>

<tr>
<td><font size="4" face="times new roman" color="black">ATTACHMENTS</td>
<td><input type="file" name="file"/> 
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
</tr>
<tr>
<input type="hidden" name="docid" value="<%=docid%>"/>
<td><input type="submit" value="ASSIGN"/></td>
<td><input type="button" value="CANCEL"/></td>
</tr>
</table>
<%
}
catch(Exception e)
{
out.println(e);
}
%>

</form>
</center>
</body>
</html>