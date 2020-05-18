<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>Item List</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>    
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style type="text/css">
        .myrow-container {
            margin: 20px;
        }
    </style>
    
    
</head>
<body class=".container-fluid">
<div class="container myrow-container">
    <div class="panel panel-warning">
        <div class="panel-heading">
            <h3 class="panel-title">
                <b>Item List</b> 
                <a href="additem">Add Item</a>
            </h3>
        </div>
        <div class="panel-body">
            <c:if test="${empty item}">
                Empty
            </c:if>
            <c:if test="${not empty item}">   
            
            	            	
                <table class="table table-hover table-bordered">
                    <thead style="background-color: #F2F5A9;">
                    <tr>
                        <th>Id</th>
                        <th>Price</th>
                        <th>Item Name</th>
                        <th>Description</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${item}" var="i">
                        <tr>
                        	<th><c:out value="${i.id}"/></th>
                        	<th><c:out value="${i.price}"/></th>
                        	<th><c:out value="${i.name}"/></th>
                        	<th><c:out value="${i.description}"/></th>
                        	<th><a href="edititem?id=<c:out value='${i.id}'/>">Edit</a></th>
                        	<th><a href="deleteitem?id=<c:out value='${i.id}'/>">Delete</a></th>                         	
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </div>
 </div>   
   

</body>
</html>