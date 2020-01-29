package Servlets;

import BackEnd.User;
import controler.ControlerForms;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "Servlets.Inscription")
public class Inscription extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ControlerForms cf = new ControlerForms();
        cf.ControleConnexion(request);
        // Si tout est Ok ==> création des variables de session
        if (cf.getResultat(0) == true && cf.getResultat(1) == true) {
            User utilisateur = new User();
            // Initialisation du moteur de session de JEE
            HttpSession session = request.getSession();
            session.setAttribute("id", utilisateur.getId());
            session.setAttribute("nom", utilisateur.getNom());
            session.setAttribute("prenom", utilisateur.getPrenom());
        }
        request.setAttribute("controller", controller);
        this.getServletContext().getRequestDispatcher("/WEB-INF/compte.jsp").forward(request, response);
    }
}
