package Model.Sconto;

import Model.Ordine.Ordine;
import Model.Utente.Utente;

import java.time.LocalDate;

public class Sconto {

    private String codice;
    private LocalDate dataScadenza;
    private double sconto;
    private Ordine ordine;
    private Utente user;

    public Sconto(){
        super();
    }

    public String getCodice() {
        return codice;
    }

    public void setCodice(String codice) {
        this.codice = codice;
    }

    public LocalDate getDataScadenza() {
        return dataScadenza;
    }

    public void setDataScadenza(LocalDate dataScadenza) {
        this.dataScadenza = dataScadenza;
    }

    public double getSconto() {
        return sconto;
    }

    public void setSconto(double sconto) {
        this.sconto = sconto;
    }

    public Ordine getOrdine() {
        return ordine;
    }

    public void setOrdine(Ordine ordine) {
        this.ordine = ordine;
    }

    public Utente getUser() {
        return user;
    }

    public void setUser(Utente user) {
        this.user = user;
    }
}