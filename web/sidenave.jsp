<%-- 
    Document   : sidenave
    Created on : 24 avr. 2017, 23:51:11
    Author     : Cécile
--%>

<ul id="slide-out" class="side-nav fixed">
            <li><div class="userView">
            <div class="background"></div>
            <a class="circle" href="#!user"></a>
            <a href="#!name"><span class="white-text name">${requestScope['userlogin']}</span></a>
            <a href="#!email"><span class="white-text email">${requestScope['userlogin']}@mail.fr</span></a>
            </div></li>
            <!--<h5>Menu de gestion des utilisateurs</h5>
            <div class="label">
                <label>Liste des fonctionnalités à implémenter dans la Servlet (note : après chaque action cette page sera rappelée par la servlet avec la liste des utilisateurs raffraichie et un message de confirmation</label>
            </div>-->
            <li><a class="subheader">Gestionnaire d'utilisateurs</a></li>
            <li><div class="divider"></div></li>
            <li><a href="${pageContext.request.contextPath}/index.jsp">Accueil</a></li>
            <li><a href="${pageContext.request.contextPath}/consignes.jsp">Consignes</a></li>
            
            
            
            
            <li>
                <div class="collapsible-header"><i class="material-icons"></i>
                    <a href="ServletUsers?action=creerUtilisateursDeTest">1. Créer 4 utilisateurs de test</a></li>
                </div>
        
            
            
       <ul class="collapsible" data-collapsible="accordion">
    
    <li>
      <div class="collapsible-header"><i class="material-icons"></i>2. Créer un utilisateur</div>
              <div class="collapsible-body"><span>
                <form action="ServletUsers" method="get">  
                    Nom : <input type="text" name="nom"/><br>  
                    Prénom : <input type="text" name="prenom"/><br>  
                    Login : <input type="text" name="login"/><br>  
                    <!-- Astuce pour passer des paramètres à une servlet depuis un formulaire JSP !-->  
                    <input type="hidden" name="action" value="creerUnUtilisateur"/>  
                    <a class="waves-effect waves-light btn"><input type="submit" value="Créer l'utilisateur" name="submit"></a>  
                </form>
          </span></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons"></i>3. Afficher les détails d'un utilisateur</div>
              <div class="collapsible-body"><span>
          <form action="ServletUsers" method="get">  
                login : <input type="text" name="login"/><br>  
                <input type="hidden" name="action" value="chercherParLogin"/>  
                <a class="waves-effect waves-light btn"><input type="submit" value="Chercher" name="submit"/></a>  
            </form>  
          </span></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons"></i>4. Modifier les détails d'un utilisateur</div>
              <div class="collapsible-body"><span>
                    <form action="ServletUsers" method="get">  
                    Login : <input type="text" name="login"/><br>  
                    Nom : <input type="text" name="nom"/><br>  
                    Prénom : <input type="text" name="prenom"/><br>  
                    <input type="hidden" name="action" value="updateUtilisateur"/>  
                    <a class="waves-effect waves-light btn"><input type="submit" value="Mettre à jour" name="submit"/></a> 
                </form>  
          </span></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons"></i>5. Supprimer un utilisateur</div>
              <div class="collapsible-body"><span>
                    <form action="ServletUsers" method="get">  
                    Login : <input type="text" name="login"/><br>    
                    <input type="hidden" name="action" value="deleteUtilisateur"/>  
                    <a class="waves-effect waves-light btn"><input type="submit" value="Supprimer" name="submit"/></a>
                </form> 
          </span></div>
    </li>
    
  </ul>
        
        <script>$(document).ready(function(){
    $('.collapsible').collapsible();
  });</script>
           
       
            
            
            
      </ul>