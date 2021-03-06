<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>OPEBUS - Sistema de RH</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
	window.setTimeout(function(){
		$('.alert').fadeOut('middle');
	},2000);
	
});

</script>
</head>
<body>
	<div class="container">
		<div class="alert alert-${tipoAlerta } alert-block" style='position:fixed; top : 0; z-index:1; width: 400px; left : 50%; margin-left:-200px;  <c:if test="${msg == null }">display:none;</c:if>'>
		  <button type="button" class="close" data-dismiss="alert">&times;</button>
		  <strong>${titulo }</strong> &nbsp; ${msg }
		</div>
		<c:import url="/layout/menu.jsp"></c:import>