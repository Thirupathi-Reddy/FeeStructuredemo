<%@ include file="default.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0054)http://192.168.0.8:8085/fms/complaints/checkLogin.html -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title></title>


<script type="text/javascript" src="../view/js/format.js"></script>


<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>

$(function() {
    $( "#datepicker" ).datepicker({
    dateFormat:'yy-mm-dd',
 
 
      changeMonth: true,
      changeYear: true
    });
  });
  </script>
  
 
</head>
<body><br><br><br><br><br>
<table align="center" width="20%" cellspacing="5" cellpadding="5">
<tr>


<div id = "f1" style="display:none">
<c:url var="savebdsfeedetails1URL"
	value="/Student/saveStudent.html" /> 
	<form:form action="${savebdsfeedetails1URL}" method="post" id="loginform"
	commandName="newfeeForm" onsubmit="return dosum()">
	
	<table align="center" width="50%" cellspacing="5" cellpadding="5"><tr><td>
	<fieldset class="field"><legend align="center"><font size="5"><b>Student Details</b></font></legend>
	<table align="center" cellspacing="5" cellpadding="5">
				
		
										
									<tr>
										
										<!-- <td><label for="simple-input"><font size="3"><b>studentId</b></font><font color=red >*</font></label></td>
										<td><input type="text" required class="textbox1" name="studentid" id="studentid" /></td> -->
									</tr>
					
									<tr>
									
										<td><label for="simple-input"><font size="3"><b>First Name</b></font><font color=red >*</font></label></td>
										<td><input type="text" required class="textbox1" name="firstname" id="firstname" /></td>
									</tr>
									<tr>
									
										<td><label for="simple-input"><font size="3"><b>Last Name</b></font><font color=red >*</font></label></td>
										<td><input type="text" required class="textbox1" name="lastname" id="lastname" /></td>
									</tr>
									<tr>
									
										<td><label for="simple-input"><font size="3"><b>Email</b></font><font color=red >*</font></label></td>
										<td><input type="text" value="${item.email}" class="textbox1" name="email" id="email" /></td>
									</tr>
									
									<tr>
										<td><label for="dropdown-actions"><font size="3"><b>Academic Year</b></font></label></td>
										<td><select class="selectbox" id="year" name="year">
											${item.year}
											<option value="2016-17">2016-17</option>
											<option value="2017-18">2017-18</option>
											<option value="2018-19">2018-19</option>
											<option value="2019-20">2019-20</option>
											<option value="2020-21">2020-21</option>
											<option value="2021-22">2021-22</option>
											<option value="2022-23">2022-23</option>
											<option value="2023-24">2023-24</option>
											<option value="2024-25">2024-25</option>
											<option value="2025-26">2025-26</option>
											<option value="2026-27">2026-27</option>
											<option value="2027-28">2027-28</option>
											<option value="2028-29">2028-29</option>
											<option value="2029-30">2029-30</option>
											<option value="2030-31">2030-31</option>
											<option value="2031-32">2031-32</option>
											<option value="2032-33">2032-33</option>
											
											
										</select></td>
									</tr>	
		 <tr>
          <td><label for="dropdown-actions" ><font size="3"><b>Standard</b></font></label></td>
          <td><select class="selectbox" id="standard" name="standard">
          ${item.standard }
           <option>-----------Select-----------</option>
           <option value="I">I</option>
           <option value="II">II</option>
           <option value="III">III</option>
           <option value="IV">IV</option>
           <option value="V">V</option>
           <option value="VI">VI</option>
           <option value="VII">VII</option>
           <option value="VII">VIII</option>
           <option value="IX">IX</option>
           <option value="X">X</option>
          </select></td>
          
         </tr>
         
         <tr>
          <td><label for="dropdown-actions"><font size="3"><b>Section</b></font></label></td>
          <td><select class="selectbox" id="section" name="section">
          ${item.section}
          <option>-----------Select-----------</option>
           <option value="A">A</option>
           <option value="B">B</option>
           <option value="">NONE</option>
           
         </select></td>
         </tr>
         
         <tr>
          <td><label for="dropdown-actions"><font size="3"><b>Type Of Student</b></font></label></td>
          <td><select class="selectbox" id="typeofstudent" name="typeofstudent">
          ${item.typeofstudent}
          <option>-----------Select-----------</option>
           <option value="Dayscholer">Dayscholer</option>
           <option value="Hostalite">Hostalite</option>
         </select></td>
         </tr>
         <tr>
         <td><label for="simple-input"><font size="3"><b>Date Of Birth</b></font><font color=red >*</font></label></td>
		 <td><input type="date" value="${item.dateofbirth}" required class="textbox1" name="dateofbirth" id="dateofbirth" /></td>
         </tr>
          <tr>
         <td><label for="simple-input"><font size="3"><b>Total Fee Amount</b></font><font color=red >*</font></label></td>
		 <td><input type="text" required class="textbox1" name="totalfee" id="totalfee" /></td>
         </tr>
         
         <tr>
         <td><label for="simple-input"><font size="3"><b>Paid Amount</b></font><font color=red >*</font></label></td>
		 <td><input type="text"  required class="textbox1" name="paidAmount" id="paidAmount" /></td>
         </tr>
         
         <tr>
         <td><label for="simple-input"><font size="3"><b>Paid Date</b></font><font color=red >*</font></label></td>
		 <td><input type="date"  required class="textbox1" name="paidDate" id="paidDate" /></td>
         </tr>
         
         <tr>
         <td><label for="simple-input"><font size="3"><b>due Amount</b></font><font color=red >*</font></label></td>
		 <td><input type="text"  required class="textbox1" name="dueAmount" id="dueAmount" /></td>
         </tr>
         <tr>
          <td><label for="dropdown-actions"><font size="3"><b>Status</b></font></label></td>
          <td><select class="selectbox" id="status" name="status">
          <option>-----------Select-----------</option>
           <option value="Due">Due</option>
           <option value="NoDue">NoDue</option>
         </tr>
									
		
							<tr><td></td>
							<td><input type="submit" class="myButton" value="Submit"   /></td>
							</tr>
		
					
					
	</table>	
	</fieldset></td></tr></table>
	</form:form>	

</div>


	

<script type = "text/javascript">
function showForm(){
var selopt = document.getElementById("opts").value;
if (selopt == 1) {
document.getElementById("f1").style.display="block";
document.getElementById("f2").style.display="none";
}
if (selopt == 2) {
document.getElementById("f2").style.display="block";
document.getElementById("f1").style.display="none";
}
}

</script>
	</body>			
					
</html>