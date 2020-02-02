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

    //TODO: this is temporary : will be in the database next
    private ArrayList<Famile> createFamillies(){
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
        return listeFamille;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listeFamille", createFamillies());
        this.getServletContext().getRequestDispatcher("/WEB-INF/produits.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ControlerForms cf = new ControlerForms();
        cf.ControleProduits(request);

        BackEnd.Produits produit = new BackEnd.Produits();
        produit.setReference(Integer.parseInt(request.getParameter("reference")));
        produit.setProduits(request.getParameter("nom"));
        produit.setPrix(Float.parseFloat(request.getParameter("prix")));
        produit.setFamille(Integer.parseInt(request.getParameter("famille")));

        if (cf.getResultat(0) &&
                cf.getResultat(1) &&
                cf.getResultat(2)) {
            //TODO: create a new product in the database
        }
        // Initialisation de request pour réponse
        request.setAttribute("controller", cf);
        request.setAttribute("produit", produit);
        request.setAttribute("listeFamille", createFamillies());
        // Appel de la JSP
        this.getServletContext().getRequestDispatcher("/WEB-INF/produits.jsp").forward(request, response);
    }
}
