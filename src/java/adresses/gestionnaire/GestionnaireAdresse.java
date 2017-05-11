/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adresses.gestionnaire;

import javax.ejb.Stateless;
import java.util.Collection;  
import javax.ejb.Stateless;  
import javax.persistence.EntityManager;  
import javax.persistence.PersistenceContext;  
import javax.persistence.Query;  
import adresses.modeles.Adresse;


/**
 *
 * @author jux
 */
@Stateless
public class GestionnaireAdresse {

    // Ici injection de code : on n'initialise pas. L'entity manager sera créé  
    // à partir du contenu de persistence.xml  
    @PersistenceContext  
    private EntityManager em;  
   
    // Add business logic below. (Right-click in editor and choose  
    // "Insert Code > Add Business Method") 
}
