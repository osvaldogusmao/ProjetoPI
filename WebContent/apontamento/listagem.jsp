<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:import url="/layout/header.jsp"></c:import>

	<div>
		<a href="${pageContext.request.contextPath }/apontamento?novo" class="btn btn-info">Novo Apontamento</a>
	</div>

<c:import url="/layout/footer.jsp"></c:import>