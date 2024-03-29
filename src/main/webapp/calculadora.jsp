<%@page import="org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

<%@ page import="utility.Calculadora" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Calculadora Online</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 <script src="https://rawgit.com/notifyjs/notifyjs/master/dist/notify.js"></script>
<title>Calculadora</title>
</head>
<body>



<%! StringBuilder mostrar = new StringBuilder(""); %>

<%
String numero = request.getParameter("numero") != null ? request.getParameter("numero") : "";
String operador = request.getParameter("operacion") != null ? request.getParameter("operacion") : "";
Calculadora calculadora = new Calculadora();


if(request.getParameter("borrar") != null) {
    calculadora.limpiar(mostrar);
    
} else if(request.getParameter("enviar") != null) {
    calculadora.introducirCalculos(numero, operador, mostrar);
    
} else if(request.getParameter("resolver") != null) {
    calculadora.introducirCalculos(numero, operador, mostrar);
    
     double resultado = calculadora.resolver(mostrar);
     out.println("Resultado: " + resultado);
}
%>

<form method="get" action="calculadora.jsp">
<div class="row">
</div>
<div class="row">
<div class="col-md-4">
</div>
<div class="col-md-4">
<div class="panel panel-primary">
 <div class="panel-heading">Calculadora Online <span class="label label-danger">By Byspel.com</span>
 </div>
 <div class="panel-body">
 <div class="input-group">
 <label class="input-group-addon">Resultado</label>
 <input type="text" class="form-control" name="resultado" id="resultado" value="<%out.print(mostrar); %>" aria-describedby="basic-addon3">
 </div>
 <br>
 <div class="input-group">
 <label class="input-group-addon"  id="num">Numero</label>
 <input type="number" class="form-control" name="numero" id="numero">
 </div>
 <div class="btn-group btn-group-justified" role="group" aria-label="...">
  <div class="btn-group" role="group">
	  
	<br>

<select class="btn btn-success" name="operacion" id="operacion">
	<option></option>
  <option value="+">+</option>
  <option value="-">-</option>
</select>

 </div>
 </div>
<br>
 
 <button type="submit" class="btn btn-primary btn-lg btn-block" name="enviar" id="enviar" value="enviar">ENVIAR</button>
 <button type="submit" class="btn btn-primary btn-lg btn-block"  name="borrar" id="borrar" value="borrar">BORRAR</button>
 <button type="submit" class="btn btn-primary btn-lg btn-block"  name="resolver" id="resolver" value="resolver">RESOLVER</button>
 </div>
 </div>
</div>
</div>
</form>
</body>
</html>>