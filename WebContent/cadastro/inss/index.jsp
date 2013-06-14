<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="/layout/header.jsp"></c:import>
	
	<form action="${pageContext.request.contextPath}/INSSController" method="post">
	
	<label>Ano de referencia:
	<select name="anoreferencia">
		<option value="2010">2010</option>
		<option value="2011">2011</option>
		<option value="2012">2012</option>
		<option value="2013">2013</option>
		<option value="2014">2014</option>
		<option value="2015">2015</option>
		<option value="2016">2016</option>
		<option value="2017">2017</option>
		
	</select>
	</label>
	
	<table>
		<tr>
			<th>De</th>
			<th>Até</th>
			<th>Porcentagem alíquota</th>
		</tr>
		
		<tr>
			<td><input type="text" required="" name="valorFaixaUm" /></td>
			<td><input type="text" required="" name="valorLimiteFaixaUm"/></td>
			<td><input type="text" required="" name="percentualFaixaUm"/></td>
		</tr>
			<tr>
			<td><input type="text" required="" name="valorFaixaDois"/></td>
			<td><input type="text" required="" name="valorLimiteFaixaDois"/></td>
			<td><input type="text" required="" name="percentualFaixaDois"/></td>
		</tr>
			<tr>
			<td><input type="text" required="" name="valorFaixaTres"/></td>
			<td><input type="text" required="" name="valorLimiteFaixaTres"/></td>
			<td><input type="text" required="" name="percentualFaixaTres"/></td>
		</tr>
		<tr>
			<td><input type="text" required="" name="valorMaximo"/></td>
			
			<td style="padding-left: 60px"  colspan="2"> Valor que será deduzido: <input type="text" required="" name="deducao"/></td>
		</tr>
	</table>
	
	<input type="hidden" name="logica" value="salvar"/>
	<input type="submit" value="Salvar" class="btn btn-primary"/>
	
	</form>

</body>
</html>

<c:import url="/layout/footer.jsp"></c:import>	