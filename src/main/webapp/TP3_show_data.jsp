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
     case '+':out.print("La somme : "+nb1+" et "+nb2+" est "+(result=nb1+nb2)) ; break;
     case '*':out.print(" La multiplication  : "+nb1+" et "+nb2+" est "+(result=nb1*nb2)) ;  break;
     case '-':out.print(" La soustraction : "+nb1+" et "+nb2+" est "+(result=nb1-nb2)) ;   break;
     case '/':
     if(nb2==0){out.print("La division : "+nb1+" et "+nb2+" est division imposible ");
     }else{
     out.print("La division : "+nb1+" et "+nb2+" est "+(result=nb1/nb2)) ;
     }
     break;
     default: out.print("choisis une operation ??"+"<br><a href='TP3.jsp'>RETOUR</a>");
     }
 %>
 </h2>

  </body>
  </html>