

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
<script type="text/javascript" src="../view/js/selectfee.js"></script>
 <script type="text/javascript" src="../view/js/calculate.js"></script>


<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

<link rel="stylesheet" href="/resources/demos/style.css">

</head>
<body><br><br><br><br><br>

<!-- <div id="popup1" style="display: none; width: 650px; height: 400px; overflow: auto">student Details Updated successfully</div> -->

<table align="center" width="50%" cellspacing="5" cellpadding="5">
<tr>


<div id = "f1" style="display:none">


	 
	
	
	<table align="center" width="50%" cellspacing="5" cellpadding="5"><tr><td>
	
	
	<fieldset class="field"><legend align="center"><font size="5"><b>Updating&nbsp;<font color="red" >${received.firstname}${received.lastname} </font>&nbsp;Details</b></font></legend>
	
	<table align="center"  WIDTH="50%" cellspacing="5" cellpadding="5">
				
											
							<tr>
										<td><input type="hidden" name="studentid" value="${received.studentid}" id="role" /></td>
									</tr>
					
									<tr>
									
										<td><label for="simple-input"><font size="3"><b>First Name</b></font></label></td>
										<td>${received.firstname}</td>
									</tr>
									<tr>
									
										<td><label for="simple-input"><font size="3"><b>Last Name</b></font><font color=red >*</font></label></td>
										<td>${received.lastname}</td>
									</tr>
									<tr>
									
										<td><label for="simple-input"><font size="3"><b>Email</b></font><font color=red >*</font></label></td>
										<td>${received.email}</td>
									</tr>
									
									<tr>
										<td><label for="dropdown-actions"><font size="3"><b>Academic Year</b></font></label></td>
	
										<td>${received.year}</td>
								</tr>	
		 <tr>
          <td><label for="dropdown-actions" ><font size="3"><b>Standard</b></font></label></td>
          <td>
           ${received.standard}
          </td>
          
         </tr>
         
          <tr>
          <td><label for="dropdown-actions"><font size="3"><b>Section</b></font></label></td>
 
          <td>
          ${received.section}
           </td>
         </tr>
         
         <tr>
         <tr >
               
        <td><label for="simple-input"><font size="3"><b>Date Of Birth</b></label></td>
		 <td>${received.dateofbirth}</td>
         </tr>
         <tr>
          <td><label for="dropdown-actions"><font size="3"><b>Type Of Student</b></font></label></td>
 
          <td>${received.typeofstudent}</td>
         </tr>  
        
        
       <tr>
        
         <td><label for="simple-input"><font size="3"><b>Total Tuition Fee</b></font><font color=red >*</font></label></td>
		 <td>${received.totaltdfee}</td>
         </tr>
									
		 	<tr >
         <td><label for="simple-input"><font size="3"><b>Paid Tuition Fee</b></font><font color=red >*</font></label></td>
		 <td>${received.totaltdpfee}</td>
         </tr>
         <tr>
         <td><label for="simple-input"><font size="3"><b>Due Tuition Fee</b></font><font color=red >*</font></label></td>
		 <td>${received.totaltddfee}</td>
         </tr>
         <tr >
       
         <tr >
         <td><label for="simple-input"><font size="3"><b>Total Computer Fee</b></font><font color=red >*</font></label></td>
		 <td>${received.totalctfee}</td>
         </tr>
          <tr >
         <td><label for="simple-input"><font size="3"><b>Paid Computer Fee</b></font><font color=red >*</font></label></td>
		 <td>${received.totalcpfee}</td>
         </tr>
            <tr >
         <td><label for="simple-input"><font size="3"><b>Due Computer Fee</b></font><font color=red >*</font></label></td>
		 <td>${received.totalcdfee}</td>
         </tr>
   
        <tr>
										<td><label for="dropdown-actions"><font size="3"><b>Van Route(STOP)</b></font></label></td>
	
										<td>
										${received.vanStop}
											</td>
									</tr>	
         
         <tr>
         <td><label for="simple-input"><font size="3"><b> Total Van Fee</b></font><font color=red >*</font></label></td>
		 <td>${received.totalvanfee}</td>
         </tr>
         <tr>
         <td><label for="simple-input"><font size="3"><b> Van Fee TERM-1</b></font><font color=red >*</font></label></td>
		 <td>${received.vanterm1}</td>
         </tr>
         <tr>
         <td><label for="simple-input"><font size="3"><b> Van Fee TERM-2</b></font><font color=red >*</font></label></td>
		 <td>${received.vanterm2}</td>
         </tr>
         <tr>
         <td><label for="simple-input"><font size="3"><b>Van Fee TERM-3</b></font><font color=red >*</font></label></td>
		 <td>${received.vanterm3}</td>
         </tr>
           <tr >
         <td><label for="simple-input"><font size="3"><b>Paid Van Fee</b></font><font color=red >*</font></label></td>
		 <td>${received.vanpaidfee}</td>
         </tr>
           <tr >
         <td><label for="simple-input"><font size="3"><b>Due Van Fee</b></font><font color=red >*</font></label></td>
		 <td>${received.vanduefee}</td>
         </tr>
         <tr >
          <td><label for="dropdown-actions"><font size="3"><b>Status</b></font></label></td>
          <td><font size="3" color="red">${received.status1}</font></td>
         </tr> 
         
         
		
		
	</fieldset></td></tr></table>
	

</div>
</tr></table>

	





	</body>			
					
</html> 