package utilisateurs.gestionnaires;  
  
import java.util.ArrayList;
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
    private int pagination = 3; 
  
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
        q.setMaxResults(pagination);
        return q.getResultList();
    }
    
    // On récupère le nombre de tuple dans la table et le nombre de pagination à faire
    public ArrayList<Object> getNumberOfUsers() {  
        ArrayList<Object> infos = new ArrayList<Object>();
        Query q = em.createQuery("SELECT COUNT(u) from Utilisateur u");
        infos.add(q.getSingleResult());
        infos.add(Math.ceil((Long)q.getSingleResult()/pagination));
        
        return infos;
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
        q.setFirstResult(start);
        q.setMaxResults(end-start);
        return q.getResultList();
    }
    
    public Collection<Utilisateur> getNextUsersPaginated() {  
        // Exécution d'une requête équivalente à un select *  
        Query q = em.createQuery("SELECT u from Utilisateur u");        
        
        // Si position element de début+pagination < taille de la liste on peut continuer la pagination next
        if(this.actualPosition+pagination < q.getResultList().size())
        {
           this.actualPosition += pagination;
            q.setFirstResult(actualPosition);
            q.setMaxResults(pagination);
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
            this.actualPosition -= pagination;
            q.setFirstResult(actualPosition);
            q.setMaxResults(pagination);
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