<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:import url="/layout/header.jsp"></c:import>

<br>
<br>
<br>

<div class="well" style="width: 350px; margin: 0 auto; padding-left: 60px;">
	<form  method="post" action="${pageContext.request.contextPath}/LoginController">
		<fieldset >
			<legend>Identificação do Usuário</legend>
		
			<label>Usuário</label>
			<input type="text" name="usuario" class="span4"/>
				
			<label>Senha</label>
			<input type="password" name="senha" class="span4"/>	 		
			<input type="hidden" name="logica" value="entrar"/>
			<br>
			<input type="submit" value="Entrar" class="btn btn-primary"/>
			
		</fieldset>	
	</form>
</div>

<c:import url="/layout/footer.jsp"></c:import>
