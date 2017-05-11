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
            <a href="#!email"><span class="white-text email"> </span></a>
            </div></li>
            <!--<h5>Menu de gestion des utilisateurs</h5>
            <div class="label">
                <label>Liste des fonctionnalités à implémenter dans la Servlet (note : après chaque action cette page sera rappelée par la servlet avec la liste des utilisateurs raffraichie et un message de confirmation</label>
            </div>-->
            <li><a class="subheader">Gestionnaire d'utilisateurs</a></li>
            <li><div class="divider"></div></li>
            <li><a href="${pageContext.request.contextPath}/ServletUsers?action=">Accueil</a></li>
            <li><a href="${pageContext.request.contextPath}/consignes.jsp?action=">Consignes</a></li>
            
            <li>
                <div class="collapsible-header"><i class="material-icons"></i>
                    <a href="ServletUsers?action=creerUtilisateursDeTest">1. Créer 4 utilisateurs de test</a>
                </div>
        </li>
            
            
       <ul class="collapsible" data-collapsible="accordion">
    
    <li>
      <div class="collapsible-header"><i class="material-icons"></i>2. Créer un utilisateur</div>
              <div class="collapsible-body">
                  
                    <form onsubmit="return addUser();" id="form_crea_u" action="ServletUsers" method="get">  
                        Nom : <input id="form_crea_u_nom" type="text" name="nom"/><br>  
                        Prénom : <input id="form_crea_u_prenom" type="text" name="prenom"/><br>  
                        Login : <input id="form_crea_u_login"  type="text" name="login"/><br> 
                        <!-- Astuce pour passer des paramètres à une servlet depuis un formulaire JSP !-->  
                        <br><input id="form_crea_u_action" type="hidden" name="action" value="creerUnUtilisateur"/> 
                        <a class="waves-effect waves-light btn"><input type="submit" value="Créer utilisateur" name="submit"></a>
                    </form> 
                    <div id="containerForForms"></div>
                    <button class="btn-floating btn-large waves-effect waves-light green center" onclick="addAddForm()"/>
                        +
                    </button> 
               </div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons"></i>3. Génération d'utilisateurs </div>
        <div class="collapsible-body"><span>
            <form action="ServletUsers" method="get">  
                Nombre d'utilisateurs à générer : <input type="text" name="nbUser"/><br>  
                <input type="hidden" name="action" value="generateUsers"/>  
                <a class="waves-effect waves-light btn"><input type="submit" value="Générer" name="submit"/></a>  
            </form>  
          </span></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons"></i>4. Afficher les détails d'un utilisateur</div>
              <div class="collapsible-body"><span>
          <form action="ServletUsers" method="get">  
                login : <input type="text" name="login"/><br>  
                <input type="hidden" name="action" value="chercherParLogin"/>  
                <a class="waves-effect waves-light btn"><input type="submit" value="Chercher" name="submit"/></a>  
            </form>  
          </span></div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons"></i>5. Modifier les détails d'un utilisateur</div>
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
      <div class="collapsible-header"><i class="material-icons"></i>6. Supprimer un utilisateur</div>
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
  });
        

        
        var tbody;

            window.onload = function () {
                tbody = document.querySelector("#tbody");
            };

            function loadUsers() {
                var url = "http://localhost:8080/JEE/ServletUsers?action=listerLesUtilisateurs";
                
                var xhr = new XMLHttpRequest();
                xhr.open('GET', url, true);

                xhr.onload = function (evt) {

                    // Transformation JSON -> objet JavaScript
                    var response = JSON.stringify(this.response);
                    var books = JSON.parse(response);
                    var debut = books.indexOf('<!-- Zone qui affiche les utilisateurs si le paramètre action vaut listerComptes -->');
                    var fin = books.indexOf('</main>');
                    var res = books.substring(debut, fin);
                    console.log(debut);
                    console.log(fin);
                    console.log(books);
                    tbody.innerHTML = res; 
                };

                xhr.send();

                console.log("requête envoyée");
            }

            // Adding book
            function addUser() {
                // Build a book object
                var book = {};
                book.nom = document.querySelector("#form_crea_u_nom").value;
                book.prenom = document.querySelector("#form_crea_u_prenom").value;
                book.login = document.querySelector("#form_crea_u_login").value;
                book.action = document.querySelector("#form_crea_u_action").value;

                var url = "http://localhost:8080/projet-tp2/ServletUsers?action=creerUnUtilisateur&nom="+book.nom+"&prenom="+book.prenom+"&login="+book.login;

                // Envoi de la requête Ajax
                var xhr = new XMLHttpRequest();
                xhr.open('get', url, true);

                xhr.onloadend = function () {
                    console.log("User créer");

                    // refresh the table
                   // showBooks(JSON.parse(this.response));
                    // Reset the form
                    document.querySelector("#form_crea_u").reset();
                };

                xhr.setRequestHeader('Content-Type', 'application/json; charset=UTF-8');
                xhr.send(JSON.stringify(book));
                reloadUsers();
                return false;

            }
            
            function reloadUsers() {
                var url = "http://localhost:8080/projet-tp2/ServletUsers?action=listerLesUtilisateurs";

                // Envoi de la requête Ajax
                var xhr = new XMLHttpRequest();
                xhr.open('get', url, true);

                xhr.onloadend = function () {
                    console.log("User créer");

                    // refresh the table
                    //showBooks(JSON.parse(this.response));
                    // Reset the form
                    document.querySelector("#form_crea_u").reset();
                };

                xhr.setRequestHeader('Content-Type', 'application/json; charset=UTF-8');
                xhr.send();

                return false;
            }
       </script>
           
       
            
            
            
      </ul>