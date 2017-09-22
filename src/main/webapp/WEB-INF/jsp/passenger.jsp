<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form id="form1" action="/employees/search" method="get">
		<table>
			<tr>
				<td>PassengerProfile No:</td>
				<td><input type="text" name="profile_id" id="profile_id"></td>
				<td colspan="2"><button type="submit">Search</button></td>

			</tr>
		</table>
	</form>

	<div>
		<button id="addB">ADD</button>
	</div>



	<c:if test="${not empty pass}">
		<form:form modelAttribute="passenger" id="form2" action="/passengers/update"
			method="post">

			<div id="updateId">

				<input type="hidden" id="hParam" name="hParam" value="uPass">

				<fieldset id="fieldId" name="field" disabled="disabled">
					<table>
						<tr>
							<td>Profile Id:</td>
							<td>${requestScope.pass.profile_id}</td>
						</tr>
						<tr>
							<td>password:</td>
							<td>${requestScope.pass.password}</td>
						</tr>
						<tr>
							<td>First Name:</td>
							<td>${requestScope.pass.first_name}</td>
						</tr>
						<tr>
							<td>Last Name:</td>
							<td>"${requestScope.pass.last_name}</td>
						</tr>
						<tr>
							<td>address:</td>
							<td>${requestScope.pass.address}</td>
						</tr>
						<tr>
							<td>tel_no:</td>
							<td>${requestScope.pass.tel_no}</td>
						</tr>
						<tr>
							<td>email:</td>
							<td>${requestScope.pass.email_id}</td>
						</tr>
					</table>

				</fieldset>
			</div>
		</form:form>
		<div>
			<button id="updateB">UPDATE</button>
			<button id="deleteB" onclick="delB(${requestScope.pass.profile_id})">DELETE</button>
			<button id="saveB" style='display: none'>SAVE</button>
		</div>
	</c:if>



	<c:if test="${pass!=null}">
		<form id=dform>
			<table>
				<tr>
					<td>Profile Id:</td>
					<td>${requestScope.pass.profile_id}</td>
				</tr>
				<tr>
					<td>password:</td>
					<td>${requestScope.pass.password}</td>
				</tr>
				<tr>
					<td>First Name:</td>
					<td>${requestScope.pass.first_name}</td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td>"${requestScope.pass.last_name}</td>
				</tr>
				<tr>
					<td>address:</td>
					<td>${requestScope.pass.address}</td>
				</tr>
				<tr>
					<td>tel_no:</td>
					<td>${requestScope.pass.tel_no}</td>
				</tr>
				<tr>
					<td>email:</td>
					<td>${requestScope.pass.email_id}</td>
				</tr>
			</table>
		</form>
	</c:if>


	<form id="formadd" method="post" action="/passengers"
		style="display: none">
		<input type="hidden" name="hParam" value="addEmp">
		<table>
			<tr>
				<td>Profile Id:</td>
				<td><input class="form-group" type="text" id="profile_id"
					name="profile_id" value=""></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input class="form-group " type="text" id="password"
					name="password" value=""></td>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><input class="form-group " type="first_name"
					id="first_name" name=first_name value=""></td>
			</tr>
			<tr>
				<td>Last Name:</td>
				<td><input class="form-group " type="text" id="last_name"
					name="last_name" value=""></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><input class="form-group " type="text" id="address"
					name="address" value=""></td>
			</tr>
			<tr>
				<td>Tel_No:</td>
				<td><input class="form-group " type="text" id="tel_no"
					name="tel_no" value=""></td>
			</tr>
			<tr>
				<td>Email _Id:</td>
				<td><input class="form-group " type="text" id="email"
					name="email" value=""></td>
			</tr>

			<tr>
				<td colspan="2"><button id="saB" type="submit">SAVE</button></td>
			</tr>

		</table>
	</form>
	<script src="passenger.js" ></script>
</body>

</html>