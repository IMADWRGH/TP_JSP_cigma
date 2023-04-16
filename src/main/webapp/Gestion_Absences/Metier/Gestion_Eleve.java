package Metier;
import DAO.*;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
public class Gestion_Eleve extends DAO implements IDAO<Eleve>{
String sql=null;
    @Override
    public int insert(Eleve E) {
    int res=0;
    try {
        sql="insert into eleve(nom,prenom,email) values('"+E.getNom()+"','"+E.getPrenom()+"','"+E.getEmail()+"')"   ;

        //sql="insert into eleve(nom,prenom,email) values('imad','monim','imad@gmail.com')"   ;
        res=super.Set(sql);
    } catch (Exception ex) {
     System.out.println("Erreur liée à l'éxecution de la req !!!");
    }
    return res;
    }

    @Override
    public int update(Eleve E) {
      int res=0;
    try {
        sql="update eleve set nom='"+E.getNom()+"',prenom='"+E.getPrenom()+"',email='"+E.getEmail()+"' where id="+E.getId()+"";
        res=super.Set(sql);
    } catch (Exception ex) {
     System.out.println("Erreur liée à l'éxecution de la req !!!");
    }
    return res;
    }

    @Override
    public int delete(int id) {
      int res=0;
    try {
        sql="delete from eleve  where id="+id+"";
        res=super.Set(sql);
    } catch (Exception ex) {
     System.out.println("Erreur liée à l'éxecution de la req !!!");
    }
    return res;
    }

    @Override
    public ArrayList<Eleve> Select() {
     ArrayList<Eleve> EleveList = new ArrayList();
        try{
            sql="select * from eleve";
            ResultSet rs;
            rs=super.Get(sql);
            while(rs.next())
         {
             EleveList.add(new Eleve(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4)));
              //System.out.println(rs.getInt(1)+" "+rs.getString(2));
         }
            
        }catch(Exception ex){
           System.out.println("errur requete select dans gestion Articles"); 
        }
        
        return EleveList;
    }
    
}
