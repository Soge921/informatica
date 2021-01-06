public class Principale {
    private CLInput cli;
    private Calendario c1;
    private Calendario c2;
    private int n;

    public Principale(){
        this.cli=new CLInput();
        this.leggi1();
        this.leggi2();

    }
    public void leggi1(){     //input per la data 1
        int giorno, mese, anno;
        System.out.println("anno 1:");
        do {


            mese = cli.readInt("inserisci il mese ");
            anno = cli.readInt("inserisci l'anno ");
            giorno = cli.readInt("inserisci il giorno ");
            try {
                this.c1 = new Calendario(giorno, mese, anno);
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }while (this.c1==null);
        do {
            this.n = cli.readInt("inserisci il numero di giorni da aggiungere ad anno 1 ");
        }while(n<=0);
    }
    public void leggi2(){
        int giorno, mese, anno;
        System.out.println("anno 2:");
        do {

            anno = cli.readInt("inserisci l'anno ");
            mese = cli.readInt("inserisci il mese ");
            giorno = cli.readInt("inserisci il giorno ");
            try {
                this.c2 = new Calendario(giorno, mese, anno);
            } catch (Exception e) {
                System.out.println(e.getMessage());
            }
        }while (this.c2==null);
    }


    public static void main(String []args ){           //main
        Principale p=new Principale();
        p.svolgi();
    }

    public void svolgi(){
        int b=c2.getGiorni();
        int a=c1.getGiorni();
        int diff = a-b;
        if (diff<0){
            diff=diff*(-1);
        }
        c1.getData(a,this.n);
        System.out.print("differenza : "+diff);

    }
}
