package controler;

import BackEnd.User;

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

        // Récupération du nom et contrôle
        String nom;
        nom = request.getParameter("nom");
        setResultat(1, (nom != "" && !nom.isEmpty()));

        // Récupération du prix et contrôle
        int prix;
        try {
            prix = Integer.parseInt(request.getParameter("prix"));
        } catch (NumberFormatException e) {
            prix = 0;
        }
        setResultat(2, (prix != 0));
    }

    public void ControleConnexion(HttpServletRequest request) {

        User utilisateur = new User();
        utilisateur.setNom("Rivière");
        utilisateur.setPrenom("Curtis");
        utilisateur.setId(1);
        utilisateur.setEmail("CurtisRiviere@gmail.com");
        utilisateur.setPortable("02.86.21.19.37");
        utilisateur.setCodePostal("53000 ");
        utilisateur.setVille("LAVAL");
        utilisateur.setPassword("azerty1!");
        // Initialisation du tableau et contrôle
        resultat = new Boolean[2];
        // Récupération du login
        String login = "";
        if (request.getParameter("login") != null) {
            login = request.getParameter("login");
        }
        setResultat(0, (login != null && !login.isEmpty()) && login.equals(utilisateur.getEmail()));
        // Récupération du mot de passe et contrôle
        String pwd = "";
        if (request.getParameter("pwd") != null) {
            pwd = request.getParameter("pwd");
        }
        setResultat(1, (pwd != null && !pwd.isEmpty()) && pwd.equals(utilisateur.getPassword()));
    }

    public void ControleInscription(HttpServletRequest request) {
        // Initialisation du tableau et contrôle
        resultat = new Boolean[8];
        // nom
        String nom = "";
        if (request.getParameter("nom") != null) {
            nom = request.getParameter("nom");
        }
        setResultat(0, (nom != null && !nom.isEmpty()));
        //prenom
        String prenom = "";
        if (request.getParameter("prenom") != null) {
            prenom = request.getParameter("prenom");
        }
        setResultat(1, (prenom != null && !prenom.isEmpty()));
        //adresse
        String adresse = "";
        if (request.getParameter("adresse") != null) {
            adresse = request.getParameter("adresse");
        }
        setResultat(2, (adresse != null && !adresse.isEmpty()));
        //prenom
        String codepostal = "";
        if (request.getParameter("codepostal") != null) {
            codepostal = request.getParameter("codepostal");
        }
        setResultat(3, (codepostal != null && !codepostal.isEmpty()));
        //ville
        String ville = "";
        if (request.getParameter("ville") != null) {
            ville = request.getParameter("ville");
        }
        setResultat(4, (ville != null && !ville.isEmpty()));
        //portable
        String portable = "";
        if (request.getParameter("portable") != null) {
            portable = request.getParameter("portable");
        }
        setResultat(5, (portable != null && !portable.isEmpty()));
        //Email
        String Email = "";
        if (request.getParameter("Email") != null) {
            Email = request.getParameter("Email");
        }
        setResultat(6, (Email != null && !Email.isEmpty()));
        //password
        String password = "";
        if (request.getParameter("password") != null) {
            password = request.getParameter("password");
        }
        setResultat(7, (password != null && !password.isEmpty()));
    }
}
