<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TP 3 </title>
  </head>
  <body>
  <h1 align="center">Calculatrice simple</h1>
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
        <input type="submit" name="calculer" value="calculer"/><br /><br />
     </form>
  </body>
  </html>