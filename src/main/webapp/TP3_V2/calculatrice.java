package TP3_V2;

public class calculatrice {
    private int nbr1 ,nbr2;

    public calculatrice(int nbr1, int nbr2) {
        this.nbr1 = nbr1;
        this.nbr2 = nbr2;
    }

    public int Addition(){
        return this.nbr1+nbr2;
    }
    public int Multiplication(){
        return this.nbr1*nbr2;
    }
    public int Soustraction(){
        return this.nbr1-nbr2;
    }
    public String Division(){
        return this.nbr2!=0 ? this.nbr1/nbr2+" ":"imposible";
    }
}