package utilisateurs.gestionnaires;  
  
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;  
import javax.ejb.Stateless;  
import javax.persistence.EntityManager;  
import javax.persistence.PersistenceContext;  
import javax.persistence.Query;  
import utilisateurs.modeles.Utilisateur; 
import adresses.modeles.Adresse;
import java.util.List;
  
@Stateless  
public class GestionnaireUtilisateurs {  
    // Ici injection de code : on n'initialise pas. L'entity manager sera créé  
    // à partir du contenu de persistence.xml  
    @PersistenceContext  
    private EntityManager em;
    private int pagination = 10; 
    private String csvFile = "/Users/jux/NetBeansProjects/projet-tp2/web/resources/dataCSV/dataSetUsers.csv";
  
    public void creerUtilisateursDeTest() {  
        creeUtilisateur("John", "Lennon", "jlennon");  
        creeUtilisateur("Paul", "Mac Cartney", "pmc");  
        creeUtilisateur("Ringo", "Starr", "rstarr");  
        creeUtilisateur("Georges", "Harisson", "georgesH");  
    }  
  
    public Utilisateur creeUtilisateur(String nom, String prenom, String login) { 
        Utilisateur u = new Utilisateur(prenom, nom, login);
        
        Adresse a = new Adresse(94,"Chemin de Guiran","83210","SOLLIES-TOUCAS","France");
        ArrayList<Adresse> la = new ArrayList<Adresse>();
        la.add(a);
        u.setAdresses(la);
        
        em.persist(u);  
        return u;  
    }  
    
    public void generateUsers(int nbUsers) throws FileNotFoundException, IOException
    {
        String line = "";
        String cvsSplitBy = ",";
        BufferedReader br = new BufferedReader(new FileReader(csvFile));
 
        for(int i=0 ; i<nbUsers ; i++)
        {
            line = br.readLine();
            String[] user = line.split(cvsSplitBy);
            Utilisateur u = new Utilisateur(user[0], user[1], user[2]);  
            em.persist(u);  
        }
    }
  
    public Collection<Utilisateur> getAllUsers() {  
        // Exécution d'une requête équivalente à un select *  
        Query q = em.createQuery("SELECT u from Utilisateur u"); 
        q.setFirstResult(0);
        q.setMaxResults(pagination);
        return q.getResultList();
    }
    
    // On récupère le nombre de tuple dans la table et le nombre de pagination à faire
    public long getNumberOfUsers() {  
        ArrayList<Object> infos = new ArrayList<Object>();
        Query q = em.createQuery("SELECT COUNT(u) from Utilisateur u");   
        return (Long)q.getSingleResult();
    }
    
    public ArrayList<Integer> getPaginationInfos(long numberOfUsers)
    {
        ArrayList<Integer> bounds = new ArrayList<Integer>();
        for(int i=0 ; i<numberOfUsers ; i+=pagination)
        {
            if(i+pagination>=numberOfUsers)
            {
                bounds.add(i+1);
                bounds.add((int)numberOfUsers); 
            }
            else
            {
                bounds.add(i+1);
                bounds.add(i+pagination);
            }
        }
        return bounds;  
    }
    
    public Collection<Utilisateur> getUsersPaginated(int start, int end)
    {
        Query q = em.createQuery("SELECT u from Utilisateur u"); 
        q.setFirstResult(start-1);
        q.setMaxResults(end-start+1);
        return q.getResultList();
    }
    
    public Collection<Utilisateur> getOneUserByLogin(String login) { 
        Query q = em.createQuery("SELECT u FROM Utilisateur u WHERE u.login ='"+login+"'");  
        return q.getResultList(); 
    }
    
    public Collection<Utilisateur> getOneUserByLoginAndLastName(String login, String lastname) {  
        Query q = em.createQuery("SELECT u FROM Utilisateur u WHERE u.login ='"+login+"'");  
        return q.getResultList(); 
    }
    
    public int updateUtilisateur(String nom, String prenom, String login) {
        // Exécution d'une requête équivalente à un update where login    
        Query q = em.createQuery("UPDATE Utilisateur u SET u.lastname = '"+nom+"', u.firstname = '"+prenom+"' WHERE u.login = '"+login+"'");
        return q.executeUpdate();
    }
    
    public int deleteUser(String login) {
        // Exécution d'une requête équivalente à un delete from where login    
        Query q = em.createQuery("DELETE FROM Utilisateur u WHERE u.login = '"+login+"'");
        return q.executeUpdate();
    }
    
    // Add business logic below. (Right-click in editor and choose  
    // "Insert Code > Add Business Method")  


}  