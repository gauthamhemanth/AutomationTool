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
<br>
<BODY onLoad="start()">
<body bgcolor="turquoise">
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
<center>
<table border="1">
<tr>
<td><font size="4" face="times new roman" color="black">EMPLOYEE ID</td>
<td><font size="4" face="times new roman" color="black">DOCUMENT ID</td>
<td><font size="4" face="times new roman" color="black">DOCUMENT DESCRIPTION</td>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
</tr>
</table>
</center>
</body>
</html>