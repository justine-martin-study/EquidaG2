<%-- 
    Document   : consulterClient
    Created on : 23 juin 2017, 10:33:23
    Author     : Zakina
--%>

<%@page import="modele.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/vues/include/header.jsp" />
<h1>Infos clients</h1>

 <%
Client unClient = (Client)request.getAttribute("pClient");
%>


<table class="table table-bordered table-striped table-condensed">
    <tr>
        <td>NOM :</td>
        <td><% out.println(unClient.getNom());%></td>
    </tr>
    <tr>
        <td>PRENOM :</td>
        <td><%  out.println(unClient.getPrenom());%></td>  
    </tr>
    <tr>
        <td>ADRESSE  :</td>
        <td><%  out.println(unClient.getRue());%></td>  
    </tr>
    <tr>
        <td> CODE POSTAL  :</td>
        <td><%  out.println(unClient.getCopos());%></td>  
    </tr>
    <tr>
        <td> VILLE  :</td>
        <td><%  out.println(unClient.getVille());%></td>  
    </tr>
    <tr>
        <td> PAYS  :</td>
        <td><%  out.println(unClient.getPays().getCode());%></td>  
    </tr>
    <tr>
        <td> Catégories selectionnées</td><td>
        <% for (int i=0; i<unClient.getLesCategVentes().size(); i++){
           out.println(unClient.getLesCategVentes().get(i).getCode() + "</br>");

        }
        %>
      </td></tr>
</table>
        

<jsp:include page="/vues/include/footer.jsp" />
