<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="resources/css/login.css">
<title>Editar Sucursal</title>
</head>
<body>
<div class="container">
	<h2 class="">Editar Sucursal</h2>
	<form:form id="editsucform" action="${pageContext.request.contextPath}/sucursal/editar" method="POST" modelAttribute="editarDTO">
		<form:input type="hidden" name="id" path="idSucursal"/>
		
			<div class="row">
				<div class="col-md-12 form-group">
					<form:label path = "nombreSucursal">Nombre Sucursal: </form:label>
					<form:input type="text" class="form-control" name="nombre" path="nombreSucursal"/>
					<form:errors path="nombreSucursal"  cssStyle="color:red;"></form:errors>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12 form-group">
					<form:label path = "ubicacionSucursal">Ubicacion Sucursal: </form:label>
					<form:input type="text" class="form-control" name="ubicacion" path="ubicacionSucursal"/>
					<form:errors path="ubicacionSucursal" cssStyle="color:red;"></form:errors>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12 form-group">
					<form:label path = "horarioEntrada">Horario de Entrada: </form:label>
					<form:input type="time" class="form-control" name="horario entrada" path="horarioEntrada"/>
					<form:errors path="horarioEntrada" cssStyle="color:red;"></form:errors>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12 form-group">
					<form:label path = "horarioSalida">Horario de Salida: </form:label>
					<form:input type="time" class="form-control" name="horario salida" path="horarioSalida"/>
					<form:errors path="horarioSalida" cssStyle="color:red;"></form:errors>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12 form-group">
					<form:label path = "numeroMesas">Numero de Mesas: </form:label>
					<form:input type="number" class="form-control" name="numero de mesas" path="numeroMesas"/>
					<form:errors path="numeroMesas" cssStyle="color:red;"></form:errors>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-12 form-group">
					<form:label path = "nombreGerente">Nombre del Gerente: </form:label>
					<form:input type="text" class="form-control" name="Nombre Gerente" path="nombreGerente"/>
					<form:errors path="nombreGerente" cssStyle="color:red;"></form:errors>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 form-group">
				<input id="enviar" type = "submit" value="Guardar Cambios" class="btn btn-outline-dark">
					<!--button id="enviar" onclick="acceptTransaction()" class="btn btn-block btn-login">Guardar Cambios</button> -->
				</div>
			</div>
		</form:form>

</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>