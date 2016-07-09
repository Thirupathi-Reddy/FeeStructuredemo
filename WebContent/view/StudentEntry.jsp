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

<table align="center" width="50%" cellspacing="5" cellpadding="5">
<tr>


<div id = "f1" style="display:none">

<c:url var="savebdsfeedetails1URL"
	value="/Student/saveStudent.html" />
	 
	<form:form action="${savebdsfeedetails1URL}" method="post" id="loginform" name="feeform"
	commandName="newfeeForm" onsubmit="return dosum()">
	
	<table align="center" width="50%" cellspacing="5" cellpadding="5"><tr><td>
	
	
	<fieldset class="field"><legend align="center"><font size="5"><b>Student Details</b></font></legend>
	
	<table align="center"  WIDTH="50%" cellspacing="5" cellpadding="5">
				
		
										
									<tr>
										<td><input type="hidden" name="role" value="TEACHING" id="role" /><font color="red"><b>${msg}</b></font></td>
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
										<td><input type="text" required class="textbox1" name="email" id="email" /></td>
									</tr>
									
									<tr>
										<td><label for="dropdown-actions"><font size="3"><b>Academic Year</b></font></label></td>
	
										<td><select class="selectbox" id="year" name="year">
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
          <td><select class="selectbox" id="standard" name="standard" onchange="messageReveal()">
           <option value="select">-----------Select-----------</option>
           <option value="LKG">NURSERY,LKG</option>
           <option value="UKG">UKG</option>
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
          <option value="none">-----------Select-----------</option>
           <option value="A">A</option>
           <option value="B">B</option>
           <option value="">NONE</option>
           
         </select></td>
         </tr>
         
         <tr>
         <tr >
               
        <td><label for="simple-input"><font size="3"><b>Date Of Birth</b></font><font color=red >*</font></label></td>
		 <td><input type="date"  class="textbox1" name="dateofbirth" id="datepicker" /></td>
         </tr>
         <tr>
          <td><label for="dropdown-actions"><font size="3"><b>Type Of Student</b></font></label></td>
 
          <td><select class="selectbox" id="typeofstudent" name="typeofstudent" onchange = "showForm()">
          <option VALUE="none">-----------Select-----------</option>
           <option value="Dayscholer">Dayscholers</option>
           <option value="Hostler">Hostlers</option>
         </select></td>
         </tr>   </table>
        
     <!-- -- ------------------- FEE STRUCTURE FOR select----------------------   -->
        
         <DIV id="SEL" style="display:none">
         
         
         
         
         </DIV>
         
         
    
        <!--  ------------------- FEE STRUCTURE FOR hostlers----------------------  -->
         
         <DIV id = "FSH" style="display:none">
         
         <TABLE align="center" width="50%" cellspacing="5" cellpadding="5">
          <TR >
         <td><label for="simple-input"><font size="3"><b>Total Tuition Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="text"  class="textbox1" name="totaltfee" id="totaltfee" onkeyup="hostlerfeecal()"/></td>
         </tr>
									
			<tr >
         <td><label for="simple-input"><font size="3"><b>Paid Tuition Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="totaltpaidfee" id="totaltpaidfee" onkeyup="hostlerfeecal()"/></td>
         </tr>
         <tr>
         <td><label for="simple-input"><font size="3"><b>Due Tuition Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="totaltduefee" id="totaltduefee" /></td>
         </tr>
         <tr >
         
         <tr >
         <td><label for="simple-input"><font size="3"><b>Total Computer Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="totalcfee" id="totalcfee"  onkeyup="hostlerfeecal()" /></td>
         </tr>
           <tr >
         <td><label for="simple-input"><font size="3"><b>Paid Computer Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="totalcpaidfee" id="totalcpaidfee" onkeyup="hostlerfeecal()" /></td>
         </tr>
           <tr >
         <td><label for="simple-input"><font size="3"><b>Due Computer Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="totalcduefee" id="totalcduefee" /></td>
         </tr> 
         <tr >
         <td><label for="simple-input"><font size="3"><b>Total Dhobi Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="totaldfee" id="totaldfee"  onkeyup="hostlerfeecal()"/></td>
         </tr>
            <tr >
         <td><label for="simple-input"><font size="3"><b>Paid Dhobi Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="totaldpaidfee" id="totaldpaidfee"  onkeyup="hostlerfeecal()"/></td>
         </tr>
           <tr >
         <td><label for="simple-input"><font size="3"><b>Due Dhobi Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="totaldduefee" id="totaldduefee" /></td>
         </tr> 
      
        <tr >
          <td><label for="dropdown-actions"><font size="3"><b>Status</b></font></label></td>
          <td><select class="selectbox" id="status" name="status">
          <option value="none">-----------Select-----------</option>
           <option value="Due">Due</option>
           <option value="NoDue">NoDue</option></select> 
         </tr>
         </TABLE>
         
         
         
         
         
         </DIV>
         
      
         
      
 
      <!--  ------------------- FEE STRUCTURE FOR DAYSCHOLER----------------------    -->      
         
          <div id = "FSD" style="display:none">
         <TABLE align="center" width="50%" cellspacing="5" cellpadding="5">
          <TR >
         <td><label for="simple-input"><font size="3"><b>Total Tuition Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="text"  class="textbox1" name="totaltdfee" id="totaltdfee" onkeyup="dayscholerfeecal()" /></td>
         </tr>
									
			<tr >
         <td><label for="simple-input"><font size="3"><b>Paid Tuition Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="totaltdpfee" id="totaltdpfee" onkeyup="dayscholerfeecal()" /></td>
         </tr>
         <tr>
         <td><label for="simple-input"><font size="3"><b>Due Tuition Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="totaltddfee" id="totaltddfee" /></td>
         </tr>
         <tr >
         
         <tr >
         <td><label for="simple-input"><font size="3"><b>Total Computer Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="date"   class="textbox1" name="totalctfee" id="totalctfee" onkeyup="dayscholerfeecal()"/></td>
         </tr>
           <tr >
         <td><label for="simple-input"><font size="3"><b>Paid Computer Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="date"   class="textbox1" name="totalcpfee" id="totaltcpfee" onkeyup="dayscholerfeecal()" /></td>
         </tr>
           <tr >
         <td><label for="simple-input"><font size="3"><b>Due Computer Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="date"   class="textbox1" name="totalcdfee" id="totalcdfee" /></td>
         </tr>
      
        <tr>
										<td><label for="dropdown-actions"><font size="3"><b>Van Route(STOP)</b></font></label></td>
	
										<td><select class="selectbox" id="vanStop" name="vanStop" onchange="vanfeechange()">
										<option value="none">SELECT YOUR ROUTE</option>
											<option value="ABBI KANDRIGA">ABBI KANDRIGA</option>
											<option value="ALLIKESAM">ALLIKESAM</option>
											<option value="AMMAGUNTA">AMMAGUNTA</option>
											<option value="AMMAVARI PATTEDA">AMMAVARI PATTEDA</option>
											<option value="APPALAYA GUNTA">APPALAYA GUNTA</option>
											<option value="ATHURU">ATHURU</option>
											<option value="BATTI KANDRIGA">BATTI KANDRIGA</option>
											<option value="BOYALAGADDA">BOYALAGADDA</option>
											<option value="BRAHMANA PATTU">BRAHMANA PATTU</option>
											<option value="BRAHMANAKALVA">BRAHMANAKALVA</option>
											<option value="CHINTAKALVA">CHINTAKALVA</option>
											<option value="DHAMINEDU">DHAMINEDU</option>
											<option value="ESTATE QUARTERS">ESTATE QUARTERS</option>
											<option value="GAJULAMANDYAM">GAJULAMANDYAM</option>
											<option value="GANGANAGUNTA">GANGANAGUNTA</option>
											<option value="GOLLAKANDRIGA">GOLLAKANDRIGA</option>
											<option value="ITHEM VARI KANDRIGA">ITHEM VARI KANDRIGA</option>
											<option value="JANAVARI KOTALA">JANAVARI KOTALA</option>
											<option value="KADHIRI MANGALAM">KADHIRI MANGALAM</option>
											<option value="KALLURU">KALLURU</option>
											<option value="KAMMA PALLI">KAMMA PALLI</option>
											<option value="KASTHURI KANDRIGA ">KASTHURI KANDRIGA</option>
											<option value="KAYAM">KAYAM</option>
											<option value="KAYAM PETA">KAYAM PETA</option>
											<option value="MM KANDRIGA">MM KANDRIGA</option>
											<option value="MUNDLAPUDI">MUNDLAPUDI</option>
											<option value="MUPPALINDLU">MUPPALINDLU</option>
											<option value="PACHIKALVA">PACHIKALVA</option>
											<option value="PADHIREDU">PADHIREDU</option>
											<option value="PADIPETA">PADIPETA</option>
											<option value="PADMAVATHI PURAM">PADMAVATHI PURAM</option>
											<option value="PANAKAM">PANAKAM</option>
											<option value="PATHURU">PATHURU</option>
											<option value="PUDI">PUDI</option>
											<option value="RAVILLAVARI PALLI">RAVILLAVARI PALLI</option>
											<option value="SBR PURAM">SBR PURAM</option>
											<option value="SEETHA RAMAPURAM">SEETHA RAMAPURAM</option>
											<option value="SORAKAYALAPALLEM">SORAKAYALAPALLEM</option>
											<option value="THANDLAM">THANDLAM</option>
											<option value="THIRUMANDYAM">THIRUMANDYAM</option>
											<option value="THUKIVAKAM">THUKIVAKAM</option>
											<option value="TIRUCHANOOR">TIRUCHANOOR</option>
											<option value="VADAMALAPETA">VADAMALAPETA</option>
											<option value="VASANTHA NAGAR">VASANTHA NAGAR</option>
											<option value="VEMAPURAM">VEMAPURAM</option>
											<option value="VEMURU">VEMURU</option>
											<option value="VENGALRAJU KANDRIGA">VENGALRAJU KANDRIGA</option>
											<option value="VIPPAMANI PATTEDA">VIPPAMANI PATTEDA</option>
											<option value="YANAMALAPALLEM">YANAMALAPALLEM</option>
											
											
											
										</select></td>
									</tr>	
         
         <tr>
         <td><label for="simple-input"><font size="3"><b> Total Van Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="totalvanfee" id="totalvanfee" onkeyup="sumvanfee()" /></td>
         </tr>
         <tr>
         <td><label for="simple-input"><font size="3"><b> Van Fee TERM-1</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="vanterm1" id="vanterm1" onkeyup="sumvanfee()" /></td>
         </tr>
         <tr>
         <td><label for="simple-input"><font size="3"><b> Van Fee TERM-2</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="vanterm2" id="vanterm2" onkeyup="sumvanfee()" /></td>
         </tr>
         <tr>
         <td><label for="simple-input"><font size="3"><b>Van Fee TERM-3</b></font><font color=red >*</font></label></td>
		 <td><input type="text"   class="textbox1" name="vanterm3" id="vanterm3" onkeyup="sumvanfee()" /></td>
         </tr>
           <tr >
         <td><label for="simple-input"><font size="3"><b>Paid Van Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="date"   class="textbox1" name="vanpaidfee" id="vanpaidfee" onkeyup="sumvanfee()"/></td>
         </tr>
           <tr >
         <td><label for="simple-input"><font size="3"><b>Due Van Fee</b></font><font color=red >*</font></label></td>
		 <td><input type="date"   class="textbox1" name="vanduefee" id="vanduefee"  /></td>
         </tr>
         <tr >
          <td><label for="dropdown-actions"><font size="3"><b>Status</b></font></label></td>
          <td><select class="selectbox" id="status1" name="status1">
          <option value="none">-----------Select-----------</option>
           <option value="Due">Due</option>
           <option value="NoDue">NoDue</option></select> 
         </tr></TABLE></div>  
        
         <table align="center" width="50%" cellspacing="5" cellpadding="5" >       
        <tr><td></td><td></td>
	<td align="center" width="50%" ><input type="submit" class="myButton" value="Submit"   /></td>
							<td></td></tr></table>
		
					
					
		
	</fieldset></td></tr></table>
	</form:form>	

</div>
</tr></table>

	




</script>  
	</body>			
					
</html>