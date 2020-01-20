package Servlets;

import BackEnd.User;

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
        User myUser = new User();
        myUser.setNom(request.getParameter("nom"));
        myUser.setPrenom(request.getParameter("prenom"));
        myUser.setAdress(request.getParameter("adress"));
        myUser.setCodePostal(request.getParameter("codepostal"));
        myUser.setVille(request.getParameter("ville"));
        myUser.setPortable(request.getParameter("portable"));
        myUser.setEmail(request.getParameter("email"));
        myUser.setPassword(request.getParameter("password"));

        this.getServletContext().getRequestDispatcher("/WEB-INF/compte.jsp").forward(request, response);
    }
}
