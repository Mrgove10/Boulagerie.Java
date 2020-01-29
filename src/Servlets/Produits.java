package Servlets;

import BackEnd.Famile;
import controler.ControlerForms;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Servlets.Produits")
public class Produits extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Famile> listeFamille = new ArrayList<Famile>();
        Famile fam1 = new Famile();
        Famile fam2 = new Famile();
        Famile fam3 = new Famile();
        Famile fam4 = new Famile();
        Famile fam5 = new Famile();
        fam1.setReference(1);
        fam1.setFamille("Baguettes");
        fam2.setReference(2);
        fam2.setFamille("Pains");
        fam3.setReference(3);
        fam3.setFamille("Patisseries");
        fam4.setReference(4);
        fam4.setFamille("Sandwichs");
        fam5.setReference(5);
        fam5.setFamille("Viennoiseries");
        listeFamille.add(fam1);
        listeFamille.add(fam2);
        listeFamille.add(fam3);
        listeFamille.add(fam4);
        listeFamille.add(fam5);
        request.setAttribute("listeFamille", listeFamille);
        this.getServletContext().getRequestDispatcher("/WEB-INF/produits.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*BackEnd.Produits myProduit = new BackEnd.Produits();
        myProduit.setReference(Integer.parseInt(request.getParameter("reference")));
        myProduit.setProduits(request.getParameter("nom"));
        myProduit.setPrix(Float.parseFloat(request.getParameter("prix")));
        myProduit.setFamille(Integer.parseInt(request.getParameter("famille")));*/


        // Contrôle des données saisies
        ControlerForms controller = new ControlerForms();
        controller.ControleProduits(request);
        // Initialisation de request pour réponse
        request.setAttribute("controller", controller);
        // Appel de la JSP
        this.getServletContext().getRequestDispatcher("/WEB-INF/produits.jsp").forward(request, response);
    }
}
