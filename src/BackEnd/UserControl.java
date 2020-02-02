package BackEnd;

public class UserControl {
    public static User mainUtilisateur = new User();

    public static void DEBUGCREATEUSER(){
        mainUtilisateur.setId(1);
        mainUtilisateur.setNom("Rivière");
        mainUtilisateur.setPrenom("Curtis");
        mainUtilisateur.setEmail("CurtisRiviere@gmail.com");
        mainUtilisateur.setAdress("qsdsqdqsdq");
        mainUtilisateur.setPortable("02.86.21.19.37");
        mainUtilisateur.setCodePostal("53000 ");
        mainUtilisateur.setVille("LAVAL");
        mainUtilisateur.setPassword("azerty1!");
    }
}
