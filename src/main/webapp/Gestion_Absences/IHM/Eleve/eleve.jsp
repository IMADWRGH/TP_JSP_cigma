
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Metier.Gestion_Eleve"%>
<%@page import="Metier.Eleve"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%!
    ArrayList<Eleve> Eleveo ;
    Gestion_Eleve ges;
%>
    <body>
        <%
        
        ges=new Gestion_Eleve();
        
        %>
        <center>
    <h1>La liste des Eleve</h1>
     
<table border="1">
    <tr>
        <th>Cne</th>
        <th>Nom</th>
        <th>Prénom</th>
        <th>Email</th>
        <th colspan="3"><a href="form.jsp?id=">>>Ajouter</a></th>

    </tr>
    
<%
for(Eleve i : ges.Select()){
%>
    <tr>
        <td><%= i.getId() %></td>
        <td><%= i.getNom() %></td>
        <td><%= i.getPrenom() %></td>
        <td><%= i.getEmail() %></td>
        <td><a href="form.jsp?action=102&id=<%= i.getId() %>">Editer</a></td>
        <td><a href="../../Traitement/elevet.jsp?action=103&id=<%= i.getId() %>"> Supp</a></td>


    </tr>
<% 
}
%>
</table>
<a href="../../">Retour</a>

</center>
    </body>
</html>
