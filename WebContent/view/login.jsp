<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0054)http://192.168.0.8:8085/fms/complaints/checkLogin.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<title>SRI GAYATHRI GLOBAL SCHOOL</title>


<!--Datapicker  -->
 

<link href="../view/design/main.css" rel="stylesheet" type="text/css">

<link href="../view/design/menu.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="../view/design/ga.js">
</script>
<script type="text/javascript" src="../view/design/script.js"></script>
<script src="../view/design/swfobject_modified.js" type="text/javascript"></script>

<style media="screen" type="text/css">
	<!--
		 input, textarea { font-family: 'Courier New'; }
		.tableMain { border: solid 1px #a1a1a1; background-color: #f1f1f1; }
		.defaultText { width: 300px; }
		.defaultTextActive { color: #a1a1a1; font-style: normal; }
	//-->
	</style>
	<script language="javascript">
	<!--
	$(document).ready(function()
	{
		$(".defaultText").focus(function(srcc)
		{
			if ($(this).val() == $(this)[0].title)
			{
				$(this).removeClass("defaultTextActive");
				$(this).val("");
			}
		});
		
		$(".defaultText").blur(function()
		{
			if ($(this).val() == "")
			{
				$(this).addClass("defaultTextActive");
				$(this).val($(this)[0].title);
			}
		});
		
		$(".defaultText").blur();		
	});
	//-->
	</script>




<style type="text/css" media="screen">#FlashID {visibility:hidden}</style><link href="../view/design/tooltip.css" rel="stylesheet" type="text/css"></head>


<head>



<!--  <script type="text/javascript">

window.history.forward();

function noBack() { window.history.forward(); }

</script>-->

<script type="text/javascript">
  window.location.hash="no-back-button";
  window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
  window.onhashchange=function(){window.location.hash="no-back-button";}
 </script>

</head>



<!--Header-->
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="home.jsp">
<div class="header1"><span class="logo"><a href="#"><!--img src="../view/design/logo_aecs.png" alt="Logo"--></a></span>
	<span class="headerinfo1">
           AECS Maaruti Public School
                </span>
	

</div>
<!--Header--> <!--Menu-->

<!--Menu--> <!-- work space--> <!-- work space--> <!--footer-bg--> <!-- <div class="footer-bg">
            	<img src="./images/footermenubg.jpg" width="1202" height="7" alt="Footer">
            </div>--> <!--footer-bg-->

<script language="javascript" type="text/javascript">
<!--
swfobject.registerObject("FlashID");
//-->
    </script>

<script language="javascript" type="text/javascript">
	var menu2=new menu2.dd("menu2");
	menu2.init("menu2","menu2hover");
</script>

<script language="javascript" type="text/javascript">
	var menu=new menu.dd("menu");
	menu.init("menu","menuhover");
</script>







<script type="text/javascript" src="../view/design/jsapi"></script>

   

<div id="container11">
<div id="page11">

<c:url var="checkLoginURL" value="/Student/checklogin.html" /> 
<form:form action="${checkLoginURL}" method="post" id="loginform" commandName="loginForm">

<table cellpadding="6%" cellspacing="6%" align="center" style="padding-top: 10%">
<tr><th align="center" colspan="2"><font color="red"><b>${msg}</b></font></th></tr>
<tr><td><font size="4"><b>User Name</b></font></td><td><input type="text" required class="textbox" name="username"/></td></tr>
<tr><td><font size="4"><b>Password</b></font></td><td><input type="password" required class="textbox" name="password"/></td></tr>
<tr><td></td><td><input type="submit" class="myButton" value=" Login "/></td></tr>

</table>
</form:form>


</div>
</div>










</body><div class="footer"><span class="copy">© 2013 AECS Version 1.0 | Developed By Sri Vasishta Software Solutions Pvt Ltd.</span> </div>
</html>