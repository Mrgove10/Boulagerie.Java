package controler;

import javax.servlet.http.HttpServletRequest;

public class ControlerForms {
    private Boolean[] resultat;

    // Getters & Setters
    public boolean getResultat(int i) {
        return resultat[i];
    }

    public void setResultat(int i, Boolean resultat) {
        this.resultat[i] = resultat;
    }

    public Boolean[] getResultat() {
        return resultat;
    }

    public void setResultat(Boolean[] resultat) {
        this.resultat = resultat;
    }

    public void ControleProduits(HttpServletRequest request) {
        resultat = new Boolean[3];
        // Récupération de la référence et contrôle
        int reference;
        try {
            reference = Integer.parseInt(request.getParameter("reference"));
        } catch (NumberFormatException e) {
            reference = 0;
        }
        setResultat(0, (reference != 0));
    }

}
