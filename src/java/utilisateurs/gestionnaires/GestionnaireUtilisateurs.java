package utilisateurs.gestionnaires;  
  
import java.util.Collection;  
import javax.ejb.Stateless;  
import javax.persistence.EntityManager;  
import javax.persistence.PersistenceContext;  
import javax.persistence.Query;  
import utilisateurs.modeles.Utilisateur;  
  
@Stateless  
public class GestionnaireUtilisateurs {  
    // Ici injection de code : on n'initialise pas. L'entity manager sera créé  
    // à partir du contenu de persistence.xml  
    @PersistenceContext  
    private EntityManager em; 
    private int actualPosition = 0;
    private int pagingJump = 3; 
  
    public void creerUtilisateursDeTest() {  
        creeUtilisateur("John", "Lennon", "jlennon");  
        creeUtilisateur("Paul", "Mac Cartney", "pmc");  
        creeUtilisateur("Ringo", "Starr", "rstarr");  
        creeUtilisateur("Georges", "Harisson", "georgesH");  
    }  
  
    public Utilisateur creeUtilisateur(String nom, String prenom, String login) {  
        Utilisateur u = new Utilisateur(nom, prenom, login);  
        em.persist(u);  
        return u;  
    }  
  
    public Collection<Utilisateur> getAllUsers() {  
        // Exécution d'une requête équivalente à un select *  
        Query q = em.createQuery("SELECT u from Utilisateur u"); 
        q.setFirstResult(0);
        q.setMaxResults(pagingJump);
        return q.getResultList();
    }
    
    public int getNumberOfUsers() {  
        // Exécution d'une requête équivalente à un select *  
        Query q = em.createQuery("SELECT u from Utilisateur u");
        return q.getResultList().size();
    }
    
    public Collection<Utilisateur> getNextUsersPaginated() {  
        // Exécution d'une requête équivalente à un select *  
        Query q = em.createQuery("SELECT u from Utilisateur u");        
        
        // Si position element de début+pagination < taille de la liste on peut continuer la pagination next
        if(this.actualPosition+pagingJump < q.getResultList().size())
        {
           this.actualPosition += pagingJump;
            q.setFirstResult(actualPosition);
            q.setMaxResults(pagingJump);
            return q.getResultList(); 
        }
        System.out.println("max");
        return null;
         
    }
    
    public Collection<Utilisateur> getPreviousUsersPaginated() {  
        // Exécution d'une requête équivalente à un select *  
        Query q = em.createQuery("SELECT u from Utilisateur u"); 
        
        // Si position element de début >= 1 on peut continuer pagination précédent
        if(this.actualPosition >= 1)
        {
            this.actualPosition -= pagingJump;
            q.setFirstResult(actualPosition);
            q.setMaxResults(pagingJump);
            return q.getResultList();
        }
        System.out.println("min");
        return null;
         
    }
   
    
    public Collection<Utilisateur> getOneUserByLogin(String login) {
        // Exécution d'une requête équivalente à un select where login  
        Query q = em.createQuery("SELECT u FROM Utilisateur u WHERE u.login ='"+login+"'");  
        return q.getResultList(); 
    }
    
    public Collection<Utilisateur> getOneUserByLoginAndLastName(String login, String lastname) {
        // Exécution d'une requête équivalente à un select where login  
        Query q = em.createQuery("SELECT u FROM Utilisateur u WHERE u.login ='"+login+"'");  
        return q.getResultList(); 
    }
    
    public int updateUtilisateur(String nom, String prenom, String login) {
        // Exécution d'une requête équivalente à un update where login    
        Query q = em.createQuery("UPDATE Utilisateur u SET u.lastname = '"+prenom+"', u.firstname = '"+nom+"' WHERE u.login = '"+login+"'");
        return q.executeUpdate();
    }
    
    public int deleteUser(String login) {
        // Exécution d'une requête équivalente à un delete from where login    
        Query q = em.createQuery("DELETE FROM Utilisateur u WHERE u.login = '"+login+"'");
        return q.executeUpdate();
        /*Query query = em.createQuery(
      "UPDATE Country SET population = population * 11 / 10 " +
      "WHERE c.population < :p");*/
    }
    
    // Add business logic below. (Right-click in editor and choose  
    // "Insert Code > Add Business Method")  
}  