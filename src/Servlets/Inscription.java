package Servlets;

import BackEnd.User;
import controler.ControlerForms;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Servlets.Inscription")
public class Inscription extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ControlerForms cf = new ControlerForms();
        cf.ControleInscription(request);

        User utilisateur = new User();
        utilisateur.setId(1);
        utilisateur.setNom(request.getParameter("nom"));
        utilisateur.setPrenom(request.getParameter("prenom"));
        utilisateur.setAdress(request.getParameter("adress"));
        utilisateur.setCodePostal(request.getParameter("codepostal"));
        utilisateur.setVille(request.getParameter("ville"));
        utilisateur.setPortable(request.getParameter("portable"));
        utilisateur.setEmail(request.getParameter("email"));
        utilisateur.setPassword(request.getParameter("password"));

        if (cf.getResultat(0) &&
                cf.getResultat(1) &&
                cf.getResultat(2) &&
                cf.getResultat(3) &&
                cf.getResultat(4) &&
                cf.getResultat(5) &&
                cf.getResultat(6) &&
                cf.getResultat(7)) {
//All the values are good so lets make a new user
           //TODO: create a new user in the database
        }
        request.setAttribute("controller", cf);
        request.setAttribute("utilisateur", utilisateur);

        this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
    }
}
