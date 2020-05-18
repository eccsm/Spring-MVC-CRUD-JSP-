<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Item</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<style type="text/css">
.myrow-container {
	margin-top: 20px;
}
</style>
</head>
<body class=".container-fluid">
	<div class="container myrow-container">
		<div class="panel panel-warning">
			<div class="panel-heading">
				<h3 class="panel-title">Item Data</h3>
				<div align="right">
					<a href="listitem">Item List</a>
				</div>
			</div>
			<div class="panel-body">
				<form:form id="itemRegisterForm" cssClass="form-horizontal"
					modelAttribute="item" method="post" action="saveitem">

					<form:hidden path="id" value="${item.id}" />



					<div class="form-group">
						<div class="control-label col-xs-3">
							<form:label path="name">Item Name</form:label>
						</div>
						<div class="col-xs-6">
							<form:input id="name" cssClass="form-control" path="name"
								value="${item.name}" />
								<font color="red"><form:errors path="name" /></font>
						</div>
					</div>


					<div class="form-group">
						<div class="control-label col-xs-3">
							<form:label path="description">Description</form:label>
						</div>
						<div class="col-xs-6">
							<form:input id="desciption" cssClass="form-control" path="description"
								value="${item.description}" />
								<font color="red"><form:errors path="description" /></font>
						</div>
					</div>

					<div class="form-group">
						<form:label id="price" path="price" cssClass="control-label col-xs-3">Price</form:label>
						<div class="col-xs-6">
							<form:input cssClass="form-control" path="price"
								value="${item.price}" />
						</div>
						<font color="red"><form:errors path="price" /></font>
					</div>


					<div class="form-group">
						<div class="row">
							<div class="col-xs-4"></div>
							<div class="col-xs-4">
								<form:button class="btn btn-primary">Submit</form:button>
							</div>
							<div class="col-xs-4"></div>
						</div>
					</div>



				</form:form>
			</div>
		</div>
	</div>

</body>
</html>