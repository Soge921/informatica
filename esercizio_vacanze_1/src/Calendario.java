public class Calendario {       //dichiarazione variabili
    private int giorno;
    private int mese;
    private int anno;

    public Calendario (int giorno, int mese, int anno) throws Exception {   //costruttore
        this.setGiorno(giorno);
        this.setMese(mese);
        this.setAnno(anno);
    }

    public void setMese(int mese) throws Exception {
        if (mese<=0 || mese>12){                           //controllo  validità  mese
            throw new Exception("mese errato");
        }
        if (mese==2 && this.giorno>29){
            throw new Exception("mese errato");
        }
        if ((mese==4 || mese==6 || mese==9 || mese==11) && this.giorno>30 ){
            throw new Exception("mese errato");
        }
        this.mese = mese;
    }

    public void setGiorno(int giorno) throws Exception {
        if (giorno<= 0 || giorno >31){                     //controllo  validità  giorno
            throw new Exception("giorno errato");
        }
        this.giorno = giorno;
    }



    public void setAnno(int anno) throws Exception {
        boolean bis;
        if (anno % 400==0){                         //controllo anno  bisestile
            bis = true;
        }
        else if(anno % 4==0 && !(anno % 100==0)){
            bis = true;
        }
        else {
           bis = false;
        }
        if (anno<=0){                               //controlli anno inserito
            throw new Exception("anno errato");
        }
        if (this.giorno == 29 && bis==false){
            throw new Exception("anno errato");
        }
        this.anno = anno;
    }



    public int getMese() {
        return mese;
    }

    public int getGiorno() {
        return giorno;
    }

    public int getAnno() {
        return anno;
    }

    public void getData(int giorni,int n){
         giorni = giorni + n;
        int j = giorni / 365;
        int i = ((giorni % 365)/30)+1;
        int k = ((giorni % 365) % 30);
        this.anno=j;
        this.mese=i;
        this.giorno=k;
        System.out.println("data 1 + "+n+" giorni : "+this.giorno+"/"+this.mese+"/"+this.anno);
    }

    public int getGiorni() {
        int giorni = (this.anno*365)+((this.mese-1)*30)+(this.giorno);
        return giorni;
    }

}
