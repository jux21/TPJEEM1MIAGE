package utilisateurs.modeles;

import adresses.modeles.Adresse;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import telephones.modeles.Telephone;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-11T15:44:44")
@StaticMetamodel(Utilisateur.class)
public class Utilisateur_ { 

    public static volatile SingularAttribute<Utilisateur, String> firstname;
    public static volatile ListAttribute<Utilisateur, Telephone> telephones;
    public static volatile ListAttribute<Utilisateur, Adresse> adresses;
    public static volatile SingularAttribute<Utilisateur, Integer> id;
    public static volatile SingularAttribute<Utilisateur, String> login;
    public static volatile SingularAttribute<Utilisateur, String> lastname;

}