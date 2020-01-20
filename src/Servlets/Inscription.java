package Servlets;

import BackEnd.User;
import BackEnd.Inscription;

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
        String nom = request.getParameter("adress");
        String prenom = request.getParameter("prenom");
        String adress = request.getParameter("adress");
        int codePostal = Integer.parseInt(request.getParameter("codepostal"));
        String ville = request.getParameter("ville");
        int portable = Integer.parseInt(request.getParameter("portable"));
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        this.getServletContext().getRequestDispatcher("/WEB-INF/compte.jsp").forward(request, response);
    }
}
