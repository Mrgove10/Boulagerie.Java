package Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Servlets.Produits")
public class Produits extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/produits.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BackEnd.Produits myProduit = new BackEnd.Produits();
        myProduit.setReference(Integer.parseInt(request.getParameter("reference")));
        myProduit.setProduits(request.getParameter("nom"));
        myProduit.setPrix(Float.parseFloat(request.getParameter("prix")));
        myProduit.setFamille(Integer.parseInt(request.getParameter("famille")));

        this.getServletContext().getRequestDispatcher("/WEB-INF/compte.jsp").forward(request, response);
    }
}
