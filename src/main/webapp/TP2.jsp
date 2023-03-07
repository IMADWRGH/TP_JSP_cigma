<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Formulaires des Etudiants</title>

  </head>
  <body>
    <fieldset>
      <legend>Information personnelles</legend>
      <form action="TP2_show_data.jsp" method="post">
        <label for="nom">Nom :</label>
        <input type="text" name="nom" placeholder="Votre nom?" /><br /><br />
        <label for="sexe">Sexe :</label>
        <input type="radio" name="sexe" value="Female" />F
        <input type="radio" name="sexe" value="Male" />M <br /><br />
        <label for="lng">Langues</label>
        <input type="checkbox" name="lng" value="Arabe" checked/>Ar
        <input type="checkbox" name="lng"  value="Francais"/>Fr
        <input type="checkbox" name="lng" value="Espagnol"/>Esp
        <input type="checkbox" name="lng" value="Anglais" />Ang <br /><br />
        <label for="splt">Specialite :</label>
        <select name="splt">
          <option value="IF">Informatique</option>
          <option value="MG">Management</option>
          <option value="TL">Telecommunication et logistique</option>
          </select><br /><br />
        <label for="adr">Adresse :</label>
        <input type="text" name="adr" size="50px" />
        <br /><br />
        <input type="submit" value="Envoyer" />
        <input type="reset" value="Annuler" />
      </form>
    </fieldset>
  </body>
</html>
