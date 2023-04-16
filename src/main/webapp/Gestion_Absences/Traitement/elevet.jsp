<%-- 
    Document   : supprime
    Created on : Mar 3, 2023, 3:57:09 PM
    Author     : abdessamad
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Metier.Gestion_Eleve"%>
<%@page import="Metier.Eleve"%>
<!DOCTYPE html>
<%!
Gestion_Eleve ges;
int id,action;
String email,nom,prenom;

%>
<%
    id =Integer.parseInt(request.getParameter("id"));
 nom =request.getParameter("nom");
 prenom =request.getParameter("prenom");
 email =request.getParameter("email");
 
 Eleve Art= new Eleve(0,nom,prenom,email);
 Eleve Art1= new Eleve(id,nom,prenom,email);

    ges=new Gestion_Eleve();
    action=Integer.parseInt(request.getParameter("action"));
    switch (action) {
  case 102:
    ges.update(Art1);
    break;
  case 103:
    ges.delete(id);
    break;
  case 101:
    ges.insert(Art);
    break;
  default:
    // code to execute if none of the above cases match
}

//Eleve Art= new Eleve(CodeArticle,Designation,PrixUnitaire,Qteenstock);
//ges.update_Article(Art);

response.sendRedirect("../IHM/Eleve/eleve.jsp");
%>
