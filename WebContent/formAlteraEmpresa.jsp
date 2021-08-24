<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:url value="/alteraEmpresa" var="linkServiletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulário de Novas Empresas</title>
</head>
<body>


	<form action = "${linkServiletNovaEmpresa }" method = "post">
	
		Nome: <input type="text" name="nome" value="${empresa.nome }"/>
		Data de Abertura: <input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/>"/>
		<input type="hidden" name="id" value="${empresa.id }">
		<input type="submit"/>
	
	</form>

</body>
</html>