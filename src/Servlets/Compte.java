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

@WebServlet(name = "Servlets.Compte")
public class Compte extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(mainUtilisateur.getNom() == null) {
            DEBUGCREATEUSER();
        }
        Cookie[] cookies = request.getCookies();
        HttpSession session = request.getSession();
        if (session != null || session.getAttribute("id") != null) {
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("login")) {
                        request.setAttribute("login", cookie.getValue());
                    }
                }
                this.getServletContext().getRequestDispatcher("/WEB-INF/compte.jsp").forward(request, response);
            }
        } else {
            this.getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ControlerForms cf = new ControlerForms();
        cf.ControleConnexion(request);
        if (cf.getResultat(0) &&
                cf.getResultat(1)) {

            // Initialisation du moteur de session de JEE
            HttpSession session = request.getSession();

            User utilisateur = UserControl.mainUtilisateur;

            session.setAttribute("id", utilisateur.getId());
            session.setAttribute("nom", utilisateur.getNom());
            session.setAttribute("prenom", utilisateur.getPrenom());


            Cookie cookie = new Cookie("login", request.getParameter("nom"));
            cookie.setMaxAge(60 * 60 * 24 * 30);
            response.addCookie(cookie);
        }
        request.setAttribute("controller", cf);
        this.getServletContext().getRequestDispatcher("/WEB-INF/compte.jsp").forward(request, response);
    }
}
