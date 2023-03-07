<!DOCTYPE html>
<html lang="en">
<head>
    <title>TP_JEE</title>
</head>
<style>
    table{
        border: 0.2rem solid black;
        width: 100%;
        height:500px;
    }
    th{ border: 0.2rem solid black;}
    td{ border: 0.2rem solid black;}

</style>
<body>
    <h1 align="center">La table de multiplication</h1>
<table>
        <tr bgcolor="#5FFBF8">
        <th></th>
        <% for(int i =2;i<10;i++) { %>
                <th><%=i %></th>
        <% } %>
         <tr>
        <%
        int result;
        String color="";
        for(int i =2;i<=9;i++) {
        color="";
       if(i%2==1)
          color="#F60ABF";
        out.print(" <tr bgcolor="+color+"> <th bgcolor=\"#5FFBF8\">"+i+"</th>");
        for(int j=2;j<=9;j++)
        {
        result=i*j;
        if(i==j){out.print("<th>"+result+"</th>");
        }else{
        out.print("<td>"+result+"</td>");
        }
        }
        out.print("</tr>");
        }
        %>
    </table>
</body>
</html>
