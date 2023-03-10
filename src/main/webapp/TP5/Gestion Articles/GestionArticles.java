package Gestion Articles;
import java.sql.*;
import java.sql.ResultSet;
import java.util.*;
public class GestionArticles {
    private Connection connection;
    private Statment statment;
    private String sql="";
    public GestionArticles(){
        connection=Connexion.getConnection();
        try {
            statment=connection.createStatment();
        }catch (SQLException msg){
            System.out.print("Error at statment....");
        }
    }
    public void Ajouter(Article article){
        sql="insert into article values('"+article.getDesignation+"','"+article.getPrix_uni+"','"+article.getQte_stock+"')";
        try {
            statment.executeUpdate(sql);
        }catch (SQLException msg){
            System.out.print("Error at query....");
        }
    }
    public void Modifier(Article article){
        sql=" UPDATE  article  SET  designation ='"+article.getDesignation+"', prix_unitaire='"+article.getPrix_uni+"', qte_stock='"+article.getQte_stock+"' WHERE code_article='"+article.getCode_article"'";
        try {
            statment.executeUpdate(sql);
        }catch (SQLException msg){
            System.out.print("Error at query....");
        }
    }
    public void Supprimer(int code ){
        sql=" DELETE FROM article WHERE code_article='"+code+"'";
        try {
            statment.executeUpdate(sql);
        }catch (SQLException msg){
            System.out.print("Error at query....");
        }
    }
    public List<Article> Lister(){
        sql="SELECT * FROM article";
        try {
            List<Article> List_art = new ArrayList<Article>();
            ResultSet resultSet =statment.executeUpdate(sql);
            System.out.println("La liste des Articles :");
            while (resultSet.next()) {
                System.out.println(resultSet.getString("code_article")+"  "+resultSet.getString("designation")
                +" "+resultSet.getString("prix_unitaire")+"  "+resultSet.getString("qte_stock");
                System.out.println("-------------------------");

            }
            return List_art;
        }catch (Exception msg){
            System.out.print("Error at query....");
        }
        return null;
    }
    public Rechercher_article(int code ){
        sql="SELECT * FROM `article` WHERE code_article= "+code+" ";
        try {
            ResultSet resultSet =statment.executeUpdate(sql);
            System.out.println("Les informations sur la article :");
            while (resultSet.next()) {
             return new Article(resultSet.getInt("code_article"),resultSet.getString("designation"),resultSet.getDouble("prix_unitaire"),resultSet.getInt("qte_stock");
            }
            return List_art;
        }catch (Exception msg){
            System.out.print("Error at query.....");
        }
        return null;
    }
}