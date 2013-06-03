<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:import url="/layout/header.jsp"></c:import>
	
	
	<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/LoginController">

		<div class="control-group">
			<label class="control-label" for="usuario"> Usuário: </label>
		<div class="controls">
				<input type="text" name="usuario" id="usuario"  placeholder="Usuario"/>
		</div>
		</div>
		
		<div class="control-group">
			<label class="control-label" for="senha"> Senha:</label>
		<div class="controls">
			<input type="password" name="senha" id="senha" placeholder="Senha"/>
		</div>
		</div>
		<div class="controls">
			<input type="hidden" name="logica" value="entrar"/>
			<input type="submit" value="Entrar"/>	
		</div>	 		
	</form>
	<c:out value="${msg}"/>
<c:import url="/layout/footer.jsp"></c:import>	