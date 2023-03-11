<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="GestionArticles.*" %>
<%@ page import="Gjava.util.*" %>
<%! List<Article> liste_art;
GestionArticles gsart;
%>
<%
gsart = new GestionArticles();
liste_art=gsart.Lister();
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> TP5  </title>
  </head>
  <body>
<h1 align="center"> Liste des articles</h1>
 <table>
      <tr>
      <th>Code Article</th>
      <th>Designation</th>
      <th>Prix Unitaire</th>
      <th>Qte en stock</th>
      </tr>
 <%%><tr></tr><%%>
  </table>
  </body>
  </html>