<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modulo - Cadastro</title>
</head>
<body>

<h1>Modulo Cadastro</h1>
<form action="${pageContext.request.contextPath}/cadastro/empresa" method="post">
	<input type="submit" value="Cadastrar Empresas"/>
</form>

<form action="${pageContext.request.contextPath}/cadastro/cargo" method="post">
	<input type="submit" value="Cadastrar Cargos"/>
</form>

</body>
</html>