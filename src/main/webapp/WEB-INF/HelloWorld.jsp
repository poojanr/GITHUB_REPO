<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="/main.css" rel="stylesheet" type="text/css">
<title>Extracts</title>
</head>
<body>
	<center>
		<h2>${message}${name }</h2>
	</center>

	<form id="reports" name="reports" onsubmit="return true;" method="post">
		<table class="tablestyleMainScreen">
			<tr>
				<td>Extract Type:</td>
				<td><form:select path="helloBean">
						<form:option value="NONE" label="---Select---" />
						<form:options items="${helloBean.extractTypes }" />
					</form:select></td>
			</tr>
			<tr>
				<td class="table"><label for="quizBasic_age" class="label">NHS
						Number:</label></td>
				<td><input type="text" name="age" value="0" id="quizBasic_age" />
				</td>
			</tr>

			<tr>
				<td class="table"><label for="extFromDate" class="label">Extract
						From Date:</label></td>
				<td><input type="text" name="age" value="0" id="extFromDate" />
				</td>
			</tr>

			<tr>
				<td class="table"><label for="extToDate" class="label">Extract
						To Date:</label></td>
				<td><input type="text" name="age" value="0" id="extToDate" />
				</td>
			</tr>
			</tr>
			</tr>

			<tr>
				<td class="submitType">
				<input type="submit" value="Submit"/>
					
				</td>
			</tr>
		</table>
	</form>

</body>
</html>