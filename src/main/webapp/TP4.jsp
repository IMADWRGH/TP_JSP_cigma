<%!
 int nb1,nb2;
 string submit ;
 %>
 <%
 char opt=request.getParameter("opt");
 nb1=Integer.parseInt(request.getParameter("nb1"));
 nb2=Integer.parseInt(request.getParameter("nb2"));

 %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TP4</title>
    <style>
        .form {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>
</head>

<body>
    <form method="post" class="form">
        <label for="nb1"> Nombre 1 :</label>
        <input type="number" name="nb1" value=<%= %><br><br>
        <label for="nb2"> Nombre 2 :</label>
        <input type="number" name="nb2" value=<%= %>><br><br>
        <input type="submit" name="sub" value=<%= %>>
    </form>
</body>

</html>