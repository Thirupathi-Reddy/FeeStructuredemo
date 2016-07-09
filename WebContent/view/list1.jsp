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

<title>Aecs Maaruti Public School</title>
<link href="../view/media/dataTables/demo_page.css" rel="stylesheet"
	type="text/css" />
<link href="../view/media/dataTables/demo_table.css" rel="stylesheet"
	type="text/css" />
<link href="../view/media/dataTables/demo_table_jui.css"
	rel="stylesheet" type="text/css" />
<link href="../view/media/themes/base/jquery-ui.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="../view/media/themes/smoothness/jquery-ui-1.7.2.custom.css"
	rel="stylesheet" type="text/css" media="all" />
<script src="../view/scripts/jquery.js" type="text/javascript"></script>
<script src="../view/scripts/jquery.dataTables.min.js"
	type="text/javascript"></script>
<script type="text/javascript">
        $(document).ready(function () {
            $("#admissions").dataTable({
                "sPaginationType": "full_numbers",
                "bJQueryUI": true
            });
        });
        </script>
</head>
<body>
<br><br>
<table align="left">
	
</table>

<div id="container1"></div>
<div id="page1">
<div id="dt_example">
<div id="container">
<div id="demo_jui">
<div align="right" style="font-size:14px"><c:url var="getExcel"
	value="/Student/.html" />
	<form:form action="${getExcel}" method="post" id="loginform"
	commandName="newfeeForm" onsubmit="return dosum()">
		</form:form>
	<%-- <c:if test="${!empty studentList}"> --%>
<table id="admissions" class="display">

	<thead>
		<tr>
			<th align="left">Sno</th>
			<th align="left">FirstName</th>
			<th align="left">LastName</th>
			<th align="left">Email</th>
			<th align="left">Academic Year</th>
			<th align="left">Standard</th>
			<th align="left">Section</th>
			<th align="left">Type of Student</th>
			<th align="left">DOB</th>
			<th align="left">Total Fee</th>
			<th align="left">PaidAmount</th>
			<th align="left">DueAmount</th>
			<th align="left">Status</th>
			<th align="left">Edit</th>
			<th align="left">Delete</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${studentList}" var="item">
		
			<tr style="cursor: pointer" onmouseover="this.background='#C0C0C0'"">
				<td><c:out value="${item.studentid}"></c:out></td>
				<td><c:out value="${item.firstname}"></c:out></td>
				<td><c:out value="${item.lastname}"></c:out></td>
				<td><c:out value="${item.email}"></c:out></td>
				<td><c:out value="${item.year}"></c:out></td>
				<td><c:out value="${item.standard}"></c:out></td>
				<td><c:out value="${item.section}"></c:out></td>
				<td><c:out value="${item.typeofstudent}"></c:out></td>
				<td><c:out value="${item.dateofbirth}"></c:out></td>
				<td><c:out value="${item.totalfee}"></c:out></td>
				<td><c:out value="${item.dueAmount}"></c:out></td>
				<td><c:out value="${item.paidAmount}"></c:out></td>
				<td><c:out value="${item.status}"></c:out></td>
				 <td><a href="edit?id=${item.studentid}">Edit</a></td>
      <td><a href="delete?id=${item.studentid}">Delete</a></td>
				</tr> 
			
		</c:forEach>
	</tbody>
</table>
<%-- </c:if> --%>
</div>
</div>
</div>
</div>
</div>

</body>
</html>