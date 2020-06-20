<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Inscription</title>
		<jsp:directive.include file="/WEB-INF/jspf/headCss.jspf" />
	</head>
	<body>
		<jsp:directive.include file="/WEB-INF/jspf/header.jspf" />
		<h1>Inscription</h1>
		<form method='POST' action='${pageContext.request.contextPath}/Inscription'>
			<div id='divNom'>
				<label for='inputPrenom' >Nom : </label>
				<input type='text' placeholder='Veuillez mettre votre nom' name='inputNom' id='inputNom' 	autofocus/>
			</div>
			<div id='divPrenom'>
				<label for='inputPreom' >Prénom</label>
				<input type='text' placeholder='Veuillez mettre votre prénom' name='inputPrenom' id='inputPrenom'/>
			</div>
			<div id='divAdresse'>
				<label for='inputAdresse' >Adresse</label>
				<input type='text' placeholder='Veuillez mettre votre route' name='inputRoute' id='inputRoute'/>
				<div >
					<input type='text' placeholder='Veuillez mettre votre code Postal' name='inputPostal' id='inputPostal'/>
					<input type='text' placeholder='Veuillez mettre votre Ville' name='inputVille' id='inputVille'/>
				</div>
			</div>
			<div id='divEmail'>
				<label for='inputEmail' >Email</label>
				<input type='text' placeholder='Veuillez mettre votre email' name='inputEmail' id='inputEmail'/>
			</div>
			<div id='divPhone'>
				<label for='inputPhone' >Numéro de portable</label>
				<input type='text' placeholder='Veuillez mettre votre numéro de portable' name='inputPhone' id='inputPhone'/>
			</div>
			<div id='divFixe'>
				<label for='inputFixe' >Numéro fixe</label>
				<input type='text' placeholder='Veuillez mettre votre numéro fixe' name='inputFixe' id='inputFixe'/>
			</div>
         	<input name='inscriptionPersonne' type='submit'  />
		</form>
	</body>
</html>