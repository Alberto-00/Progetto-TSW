package Model.Articolo;

import Model.Categoria.Categoria;
import Model.Colore.Colore;
import Model.Path_immagini.PathImg;
import Model.Size.Size;
import Model.Taglia.Taglia;

import java.util.Date;
import java.util.List;

public class Articolo {

    //Dati dell'articolo
    private String sesso, descrizione, nome;
    private double prezzo;
    private int IDarticolo, sconto;
    private Date data_inserimento;
    private Categoria categoria;
    private Size size;
    private List<PathImg> paths;
    private List<Taglia> taglie;
    private List<Colore> colori;

    //Constructor
    public Articolo(){
        super();
    }

    //Getter & Setter
    public String getSesso() {
        return sesso;
    }

    public void setSesso(String sesso) {
        this.sesso = sesso;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public double getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(double prezzo) {
        this.prezzo = prezzo;
    }

    public int getIDarticolo() {
        return IDarticolo;
    }

    public void setIDarticolo(int IDarticolo) {
        this.IDarticolo = IDarticolo;
    }

    public double getSconto() {
        return sconto;
    }

    public void setSconto(int sconto) {
        this.sconto = sconto;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public List<Taglia> getTaglie() {
        return taglie;
    }

    public void setTaglie(List<Taglia> taglie) {
        this.taglie = taglie;
    }

    public List<Colore> getColori() {
        return colori;
    }

    public void setColori(List<Colore> colori) {
        this.colori = colori;
    }

    public Date getData_inserimento() {
        return data_inserimento;
    }

    public List<PathImg> getPaths() {
        return paths;
    }

    public void setPaths(List<PathImg> paths) {
        this.paths = paths;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setData_inserimento(Date data_inserimento) {
        this.data_inserimento = data_inserimento;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    public boolean containsPath(String str){
        for (PathImg p: paths){
            if(p.getPathName().equals(str))
                return true;
        }
        return false;
    }

    public boolean containsSize(String taglia){
        for (Taglia t: taglie){
            if(t.getId_nome().equals(taglia))
                return true;
        }
        return false;
    }

    public boolean containsColors(String color){
        for (Colore c: colori){
            if(c.getNome().equals(color))
                return true;
        }
        return false;
    }
}
