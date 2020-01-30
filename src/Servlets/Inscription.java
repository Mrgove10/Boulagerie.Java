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

        if (cf.getResultat(0) == true &&
                cf.getResultat(1) == true &&
                cf.getResultat(2) == true &&
                cf.getResultat(3) == true &&
                cf.getResultat(4) == true &&
                cf.getResultat(5) == true &&
                cf.getResultat(6) == true &&
                cf.getResultat(7) == true) {
            //TODO : changer avec les vrai valeurs
            User utilisateur = new User();
            utilisateur.setNom("Rivière");
            utilisateur.setPrenom("Curtis");
            utilisateur.setId(1);
            utilisateur.setEmail("CurtisRiviere@gmail.com");
            utilisateur.setPortable("02.86.21.19.37");
            utilisateur.setCodePostal("53000 ");
            utilisateur.setVille("LAVAL");
            utilisateur.setPassword("azerty1!");
                   /* User myUser = new User();
        myUser.setNom(request.getParameter("nom"));
        myUser.setPrenom(request.getParameter("prenom"));
        myUser.setAdress(request.getParameter("adress"));
        myUser.setCodePostal(request.getParameter("codepostal"));
        myUser.setVille(request.getParameter("ville"));
        myUser.setPortable(request.getParameter("portable"));
        myUser.setEmail(request.getParameter("email"));
        myUser.setPassword(request.getParameter("password"));*/
        }
        request.setAttribute("controller", cf);
        this.getServletContext().getRequestDispatcher("/WEB-INF/compte.jsp").forward(request, response);
    }
}
