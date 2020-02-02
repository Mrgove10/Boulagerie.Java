package Servlets;

import BackEnd.User;
import BackEnd.UserControl;
import controler.ControlerForms;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

import static BackEnd.UserControl.DEBUGCREATEUSER;
import static BackEnd.UserControl.mainUtilisateur;

@WebServlet(name = "Servlets.Inscription")
public class Inscription extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(mainUtilisateur.getNom() == null) {
            DEBUGCREATEUSER();
        }
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("login")) {
                    request.setAttribute("login", cookie.getValue());
                }
            }
        }
        //TODO : get the user in teh database, this is a fake
        User utilisateur = UserControl.mainUtilisateur;


        request.setAttribute("utilisateur", utilisateur);

        this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        if(request.getParameter("logout") != null){
            session.invalidate();
            response.sendRedirect("Home");
        }
        else {

            ControlerForms cf = new ControlerForms();
            cf.ControleInscription(request);

            User utilisateur = UserControl.mainUtilisateur;
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

                // Initialisation du moteur de session de JEE
                session.setAttribute("id", utilisateur.getId());
                session.setAttribute("nom", utilisateur.getNom());
                session.setAttribute("prenom", utilisateur.getPrenom());


                Cookie cookie = new Cookie("login", request.getParameter("nom"));
                cookie.setMaxAge(60 * 60 * 24 * 30);
                response.addCookie(cookie);
            }

            request.setAttribute("controller", cf);
            request.setAttribute("utilisateur", utilisateur);

            this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
        }
    }
}
