package Gestion Articles;
public class Article{
private int code_articlr;
private String designation;
private double prix_uni;

    public Article(int code_articlr, String designation, double prix_uni) {
        this.code_articlr = code_articlr;
        this.designation = designation;
        this.prix_uni = prix_uni;
    }

    public Article(int code_articlr) {
        this.code_articlr = code_articlr;
    }

    public Article(String designation, double prix_uni) {
        this.designation = designation;
        this.prix_uni = prix_uni;
    }

    public Article() {
    }

    public int getCode_articlr() {
        return code_articlr;
    }

    public void setCode_articlr(int code_articlr) {
        this.code_articlr = code_articlr;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public double getPrix_uni() {
        return prix_uni;
    }

    public void setPrix_uni(double prix_uni) {
        this.prix_uni = prix_uni;
    }

    @java.lang.Override
    public java.lang.String toString() {
        return "Article{" +
                "code_articlr=" + code_articlr +
                ", designation='" + designation + '\'' +
                ", prix_uni=" + prix_uni +
                '}';
    }
}