package DAO; 
import java.sql.*; 
public class Connexion { 
    
private static String driver="com.mysql.jdbc.Driver"; 
private static String url="jdbc:mysql://localhost:3306/ecolejava"; 
private static String user="root"; 
private static String password=""; 
public static Connection con=null; 
public static Connection getConnection()throws Exception{ 
Class.forName(driver); 
return con = DriverManager.getConnection(url, user,password); 
} 
public static void Sedeconnecter() throws Exception{ 
if(con!=null) 
con.close(); 
} 
} 
