<%-- 
    Document   : typeChevalModifier
    Created on : 6 nov. 2018, 14:53:50
    Author     : slam
--%>

<%@page import="formulaires.TypeChevalForm"%>
<%@page import="modele.TypeCheval"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/vues/include/header.jsp" />
<h1 class="center-align">Modifier un Type de Cheval</h1>

<%
	TypeChevalForm form = (TypeChevalForm) request.getAttribute("form");
        TypeCheval unTypeCheval = (TypeCheval)request.getAttribute("pTypeCheval"); 
%>

<div class="row">
	<form class="col s10 push-s1 l8 push-l2 center-align" action="typeChevalModifier" method="POST">
		<input id="codeOrigin" type="hidden" name="codeOrigin"  size="15" maxlength="50" value="<%= unTypeCheval.getId() %>">
		<div class="row">
			<div class="input-field col s12">
				<input id="libelle" type="text" name="libelle"  size="15" maxlength="50" value="<%= unTypeCheval.getLibelle()%>" class="validate">
				<label for="libelle">Libelle : </label>
			</div>
		</div>
				
		<div class="row">
			<div class="input-field col s12">
				<input id="description"  type="text"  name="description" size="30" maxlength="100" value="<%= unTypeCheval.getDesc()%>" class="validate">      
				<label for="description">Description : </label>

			</div>
		</div>

		<input type="submit" name="valider" id="valider" value="Valider"/>
	</form>
</div>
	
<jsp:include page="/vues/include/footer.jsp" />