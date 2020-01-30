package Servlets;

import BackEnd.Produits;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Servlets.Menu")
public class Menu extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //region Baguettes
        Produits prod1 = new Produits();
        prod1.setProduits("Le pain au pavot");
        prod1.setPrix((float) 1.15);
        prod1.setFamille(1);

        Produits prod2 = new Produits();
        prod2.setProduits("Le pain tresse et natte");
        prod2.setPrix((float) 1.80);
        prod2.setFamille(1);

        ArrayList<Produits> listBaguette = new ArrayList<Produits>();
        listBaguette.add(prod1);
        listBaguette.add(prod2);
        //endregion

        //region patisserie
        Produits prod3 = new Produits();
        prod3.setProduits("eclair");
        prod3.setPrix((float) 2.50);
        prod3.setFamille(3);

        Produits prod4 = new Produits();
        prod4.setProduits("eclair");
        prod4.setPrix((float) 2.10);
        prod4.setFamille(3);

        ArrayList<Produits> listPatisseriee = new ArrayList<Produits>();
        listPatisseriee.add(prod3);
        listPatisseriee.add(prod4);
        //endregion

        //region Pain
        Produits prod5 = new Produits();
        prod5.setProduits("Complet");
        prod5.setPrix((float) 1.80);
        prod5.setFamille(2);

        Produits prod6 = new Produits();
        prod6.setProduits("Tradition");
        prod6.setPrix((float) 1.35);
        prod6.setFamille(2);

        ArrayList<Produits> listPain = new ArrayList<Produits>();
        listPain.add(prod5);
        listPain.add(prod6);
        //endregion

        //region Sandwich
        Produits prod7 = new Produits();
        prod7.setProduits("Jambon-beurre");
        prod7.setPrix((float) 4);
        prod7.setFamille(4);

        Produits prod8 = new Produits();
        prod8.setProduits("Au Thon");
        prod8.setPrix((float) 4.5);
        prod8.setFamille(4);

        ArrayList<Produits> listSandwich = new ArrayList<Produits>();
        listSandwich.add(prod7);
        listSandwich.add(prod8);
        //endregion

        //region Viennoiserie
        Produits prod9 = new Produits();
        prod9.setProduits("Croissants");
        prod9.setPrix((float) 0.95);
        prod9.setFamille(5);

        Produits prod10 = new Produits();
        prod10.setProduits("Suisse");
        prod10.setPrix((float) 1.25);
        prod10.setFamille(5);

        ArrayList<Produits> listViennoiserie = new ArrayList<Produits>();
        listViennoiserie.add(prod9);
        listViennoiserie.add(prod10);
        //endregion

        request.setAttribute("listBaguette", listBaguette);
        request.setAttribute("listPatisseriee", listPatisseriee);
        request.setAttribute("listPain", listPain);
        request.setAttribute("listSandwich", listSandwich);
        request.setAttribute("listViennoiserie", listViennoiserie);
        this.getServletContext().getRequestDispatcher("/WEB-INF/menu.jsp").forward(request, response);
    }
}
