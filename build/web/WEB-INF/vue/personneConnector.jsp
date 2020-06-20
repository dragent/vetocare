<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Connection</title>
		<jsp:directive.include file="/WEB-INF/jspf/headCss.jspf" />
	</head>
	<body>
		<h1>Connexion</h1>
		<jsp:directive.include file="/WEB-INF/jspf/header.jspf" />
		<form method='POST' action='${pageContext.request.contextPath}/connector'>
			<div id='divNom'>
				<label for='inputNom' >Nom : </label>
				<input type='text' placeholder='Veuillez mettre votre nom' name='inputNom' id='inputNom'/>
			</div>
			<div id='divPrenom'>
				<label for='inputPrenom' >Prénom : </label>
				<input type='text' placeholder='Veuillez mettre votre prénom' name='inputPrenom' id='inputPrenom'/>
			</div>
         	<input name='connectionPersonne' type='submit'  />
       	</form>
	</body>
</html>