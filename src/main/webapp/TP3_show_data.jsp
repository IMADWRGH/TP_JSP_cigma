<%! String opt;
int nb1,nb2;%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TP 3 </title>
  </head>
  <body>
  <h1 align="center">Les resultats </h1>
 <h2 align="center">
 <% char opt=request.getParameter("opt").charAt(0);
 int nb1=Integer.parseInt(request.getParameter("nb1"));
 int nb2=Integer.parseInt(request.getParameter("nb2"));
 int result;
 switch(opt){
     case '+':out.print("La somme : "+(result=nb1+nb2)) ; break;
     case '*':out.print(" La multiplication  : "+(result=nb1*nb2)) ;  break;
     case '-':out.print(" La soustraction : "+(result=nb1-nb2)) ;   break;
     case '/':out.print("La division : "+(result=nb1/nb2)) ;  ;break;
     default: out.print("choisis une opération ??");
     }
 %>
 </h2>

  </body>
  </html>