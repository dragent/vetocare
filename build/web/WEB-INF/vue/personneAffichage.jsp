<%@ page language="java" contentType="text/html; charset=UTF-8"     pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>${Personne.getNomPers() } profil</title>
	</head>
	<body>
	
		<h1>Profil de ${Personne.getNomPers() }</h1>
		<div>
			<form method='POST' action='${pageContext.request.contextPath}/personne'>
				<div id='divNom'>
					<label for='inputPrenom'  >Nom : </label>
					<input type='text' placeholder='Veuillez mettre votre nom' value="${Personne.getNomPers() }" name='inputNom' id='inputNom' 	autofocus/>
				</div>
				<div id='divPrenom'>
					<label for='inputPreom' >Prénom</label>
					<input type='text' placeholder='Veuillez mettre votre prénom' value="${Personne.getPrenomPers() }"  name='inputPrenom' id='inputPrenom'/>
				</div>
				<div id='divEmail'>
					<label for='inputEmail' >Email</label>
					<input type='text' placeholder='Veuillez mettre votre email' value="${Personne.getEmailPers() }" name='inputEmail' id='inputEmail'/>
				</div>
				<div id='divPhone'>
					<label for='inputPhone' >Numéro de portable</label>
					<input type='text' placeholder='Veuillez mettre votre numéro de portable' value="${Personne.getTelPers1() }" name='inputPhone' id='inputPhone'/>
				</div>
				<div id='divFixe'>
					<label for='inputFixe' >Numéro fixe</label>
					<input type='text' placeholder='Veuillez mettre votre numéro fixe' value="${Personne.getTelPers2() }" name='inputFixe' id='inputFixe'/>
				</div>
	         	<input type="submit" name='updatePersonne' value="Modification" />
			</form>
	       	<a href="${pageContext.request.contextPath}/deleteUser">
	       		<input type="button" name='deletePersonne' type='submit' value="suppresion" />
			</a>
		</div>
		<br/>
		<div>
			<table>
					<tr>
						<td>prénom Animal</td>
						<td>date de naissance</td>
						<td>modification</td>
						<td>suppression</td>
					</tr>
				<c:forEach items="${listAnimal}" var="animal" varStatus="list">
					<tr>
						<td>${animal.getNomAnimal()}</td>
						<td>${animal.getNaissanceAnimal()}</td>
						<td>
							 ${animal.getIdAnimal()}
						</td>		
						<td>
							
							 <a href="${pageContext.request.contextPath}/deleteAnimal?id=${animal.getIdAnimal()}"><button> Suppression ${animal.getNomAnimal()}</button></a>
						</td>		
					</tr>
				</c:forEach>
			</table>
			<form method='POST' action='${pageContext.request.contextPath}/inscriptionAnimal' >
				<input type='text' placeholder='Veuillez son nom' name='inputNom' id='inputNom'/>
				<input type="date" placeholder='Veuillez sa date' name='inputDate' id='inputDate'/>
	         	<input name='inscriptionAnimal' type='submit'  />
			</form>
		</div>
		
		<br/>
	</body>
</html>