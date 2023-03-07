<%! String nom,sexe,Langues[],Specialite,Adresse;  %>
<%
 nom=request.getParameter("nom");
 sexe=request.getParameter("sexe");
Specialite=request.getParameter("splt");
Adresse=request.getParameter("adr");
Langues=request.getParameterValues("lng");
 %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TP 2 </title>
  </head>
  <body>
  <h1 align="center">Les resultats </h1>

 <p align="center">Nom :<%=nom %></p>
 <p align="center">Sexe :<%= sexe%></p>
 <p align="center">Langues :
 <%
 int i;
 for(i=0;i<Langues.length;i++){
 out.print(Langues[i]+" - ");
 }

  %></p>
 <p align="center">Specialite:<%=Specialite %></p>
 <p align="center">Adresse :<%=Adresse %></p>

  </body>
  </html>