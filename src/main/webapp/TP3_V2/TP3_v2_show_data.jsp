<%@page  import="TP3.jsp"%>
<%
Calculatrice clt;
char opt=request.getParameter("opt").charAt(0);
 int nb1=Integer.parseInt(request.getParameter("nb1"));
 int nb2=Integer.parseInt(request.getParameter("nb2"));
 clt = new Calculatrice(nb1,nb2);
 int result;
 switch(opt){
     case '+':out.print("La somme : "+nb1+" et "+nb2+" est "+clt.Addition()) ; break;
     case '*':out.print(" La multiplication  : "+nb1+" et "+nb2+" est "+clt.Multiplication) ;  break;
     case '-':out.print(" La soustraction : "+nb1+" et "+nb2+" est "+clt.Soustration()) ;   break;
     case '/':out.print("La division : "+nb1+" et "+nb2+" est "+clt.Division()) ; break;
     default: out.print("choisis une operation ??"+"<br><a href='TP3.jsp'>RETOUR</a>");
     }
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TP 3 </title>
     <style>
          .main {
                  display: flex;
                  justify-content: center;
                  align-items: center;
                  background-color: rgba(198, 215, 215, 0.835);
                  border-radius: 20px;
                  padding: 2rem;
                  margin: 2rem;
                }
                h1 {
                  margin-bottom: 5rem;
                }
                #btn {
                  margin: auto;
                  padding: 0.5rem;
                  border-radius: 10px;
                  background-color: rgb(160, 243, 215);
                }
        </style>
  </head>
  <body>
  <h1 align="center">Calculatrice simple</h1>
  <div class="main">
<form action="TP3_show_data.jsp" method="post">
        <label for="nb1">Premier Nombre :</label>
        <input type="number" name="nb1"  /><br /><br />
        <label for="nb2">Deuxieme Nombre :</label>
        <input type="number" name="nb2"  /><br /><br />
        <label>Operation :</label>
        <select name="opt">
        <option>...</option>
        <option value="+">Addition </option>
        <option value="-">Soustraction</option>
        <option value="*">Multiplication</option>
        <option value="/">Division</option>
        </select><br /><br />
        <input type="submit" name="calculer" value="calculer" id="btn"/><br /><br />
     </form>
     </div>
  </body>
  </html>