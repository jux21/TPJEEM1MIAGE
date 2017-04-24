<%-- 
    Document   : sidenave
    Created on : 24 avr. 2017, 23:51:11
    Author     : Cécile
--%>

<ul id="slide-out" class="side-nav fixed">
            <li><div class="userView">
            <div class="background"></div>
            <a class="circle" href="#!user"></a>
            <a href="#!name"><span class="white-text name">John Doe</span></a>
            <a href="#!email"><span class="white-text email">jdandturk@gmail.com</span></a>
            </div></li>
            <!--<h5>Menu de gestion des utilisateurs</h5>
            <div class="label">
                <label>Liste des fonctionnalités à implémenter dans la Servlet (note : après chaque action cette page sera rappelée par la servlet avec la liste des utilisateurs raffraichie et un message de confirmation</label>
            </div>-->
            
            <li><a href="ServletUsers?action=creerUtilisateursDeTest">1. Créer 4 utilisateurs de test</a></li>
            <li><a href="${pageContext.request.contextPath}/create_user.jsp">2. Créer un utilisateur</a></li>
            <li><a href="${pageContext.request.contextPath}/show_details_user.jsp"><span class="menulink">3. Afficher les détails d'un utilisateur</span></a></li>
            <li><a href="${pageContext.request.contextPath}/update_user.jsp"><span class="menulink">4. Modifier les détails d'un utilisateur</span></a></li>
            <li><a href="${pageContext.request.contextPath}/delete_user.jsp">5. Supprimer un utilisateur</a></li>
            <li><div class="divider"></div></li>
            <li><a class="subheader">Subheader</a></li>
            <li><a class="waves-effect" href="#!">Third Link With Wahves</a></li>
      </ul>