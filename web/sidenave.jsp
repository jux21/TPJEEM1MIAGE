<%-- 
    Document   : sidenave
    Created on : 24 avr. 2017, 23:51:11
    Author     : C�cile
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
                <label>Liste des fonctionnalit�s � impl�menter dans la Servlet (note : apr�s chaque action cette page sera rappel�e par la servlet avec la liste des utilisateurs raffraichie et un message de confirmation</label>
            </div>-->
            
            <li><a href="ServletUsers?action=creerUtilisateursDeTest">1. Cr�er 4 utilisateurs de test</a></li>
            <li><a href="${pageContext.request.contextPath}/create_user.jsp">2. Cr�er un utilisateur</a></li>
            <li><a href="${pageContext.request.contextPath}/show_details_user.jsp"><span class="menulink">3. Afficher les d�tails d'un utilisateur</span></a></li>
            <li><a href="${pageContext.request.contextPath}/update_user.jsp"><span class="menulink">4. Modifier les d�tails d'un utilisateur</span></a></li>
            <li><a href="${pageContext.request.contextPath}/delete_user.jsp">5. Supprimer un utilisateur</a></li>
            <li><div class="divider"></div></li>
            <li><a class="subheader">Subheader</a></li>
            <li><a class="waves-effect" href="#!">Third Link With Wahves</a></li>
      </ul>