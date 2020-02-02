package Servlets;

import controler.ControlerForms;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Servlets.Compte")
public class Compte extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/compte.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ControlerForms cf = new ControlerForms();
        cf.ControleConnexion(request);
        if (cf.getResultat(0) &&
                cf.getResultat(1)) {
//All the values are good so lets make a new user
            //TODO: create a new user in the database
        }
        request.setAttribute("controller", cf);
        this.getServletContext().getRequestDispatcher("/WEB-INF/compte.jsp").forward(request, response);

        // Si tout est Ok ==> création des variables de session
       /* if (cf.getResultat(0) == true && cf.getResultat(1) == true) {
            User utilisateur = new User();
            // Initialisation du moteur de session de JEE
            HttpSession session = request.getSession();
            session.setAttribute("id", utilisateur.getId());
            session.setAttribute("nom", utilisateur.getNom());
            session.setAttribute("prenom", utilisateur.getPrenom());

        }*/
    }

}
