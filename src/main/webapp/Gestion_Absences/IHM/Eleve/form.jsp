<%-- 
    Document   : form
    Created on : Mar 5, 2023, 10:39:12 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Metier.Gestion_Eleve"%>
<%@page import="Metier.Eleve"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
Gestion_Eleve ges;
int id,action;
String nom,prenom,email;

%>
<%
  ges=new Gestion_Eleve();
 
 nom="";
 prenom="";
 email="";
 action=101;
 if(!request.getParameter("id").isEmpty()){
     id=Integer.parseInt(request.getParameter("id"));
     action=102;
for(Eleve i : ges.Select()){
    if(id==i.getId()){
        nom=i.getNom();
        prenom=i.getPrenom();
        email=i.getEmail();
    }
}
 }
 
%>
        <center>
    <fieldset>
    <form action="../../Traitement/elevet.jsp?action=<%=action%>" method="post">
        <input type="hidden" name="id" value="<%=id%>">
    <table><tr>
        <td>Nom:</td>
        <td><input type="text" name="nom" value="<%=nom%>"></td>
    </tr>
    <tr>
        <td>Prenom:</td>
        <td><input type="text" name="prenom" value="<%=prenom%>"></td>
    </tr>
    <tr>
        <td>Email:</td>
        <td><input type="text" name="email" value="<%=email%>"></td>
    </tr>
    <tr>
        <td><input type="submit" name="submit" value="Envoyer"></td>
        <td><input type="reset" name="rest" value="Annuler"></td>
    </tr>
</form> 
</fieldset>
</center>
    </body>
</html>
