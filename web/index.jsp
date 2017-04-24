<%--  
    Document   : index  
    Created on : 16 sept. 2009, 16:54:32  
    Author     : michel buffa  
    Debug glassFish : netstat -aon | find ":80" | find "LISTENING"
--%>  
  
<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  
    "http://www.w3.org/TR/html4/loose.dtd">  
  
<!-- Ne pas oublier cette ligne sinon tous les tags de la JSTL seront ignorés ! -->  
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
        <!--Favicons-->
        <link rel="apple-touch-icon" sizes="57x57" href="${pageContext.request.contextPath}/resources/favicons/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="60x60" href="${pageContext.request.contextPath}/resources/favicons/apple-icon-60x60.png">
        <link rel="apple-touch-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/favicons/apple-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath}/resources/favicons/apple-icon-76x76.png">
        <link rel="apple-touch-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/favicons/apple-icon-114x114.png">
        <link rel="apple-touch-icon" sizes="120x120" href="${pageContext.request.contextPath}/resources/favicons/apple-icon-120x120.png">
        <link rel="apple-touch-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/favicons/apple-icon-144x144.png">
        <link rel="apple-touch-icon" sizes="152x152" href="${pageContext.request.contextPath}/resources/favicons/apple-icon-152x152.png">
        <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/resources/favicons/apple-icon-180x180.png">
        <link rel="icon" type="image/png" sizes="192x192"  href="${pageContext.request.contextPath}/resources/favicons/android-icon-192x192.png">
        <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/resources/favicons/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="96x96" href="${pageContext.request.contextPath}/resources/favicons/favicon-96x96.png">
        <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resources/favicons/favicon-16x16.png">
        <link rel="manifest" href="/medias/favicons/manifest.json">
        <meta name="msapplication-TileColor" content="#ffffff">
        <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
        <meta name="theme-color" content="#ffffff">
        
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        
        <!--Import materialize.css -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/materialize.css" /> 

        <!--Let browser know website is optimized for mobile -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      
        <!--Custom stylesheet -->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />  
        
        <title>Gestionnaire d'utilisateurs</title>  
    </head>  
    <body> 
        <header>
            <!--HEADER-->
            <nav class="nav-extended #7cb342 light-green darken-1" role="navigation">
                <div class="nav-wrapper">
                    <div class="row logo">
                        <a href="/" class="brand-logo flow-text">
                            <i class="material-icons">stay_primary_portrait</i>
                            <span class="hide-on-small-only flow-text">TP JEE</span></a>
                    </div>
                    <!--<ul class="tabs tabs-transparent">
                        <li class="tab"><a id="lien_menu_accueil" target="_self" href="/">Accueil</a></li>
                        <li class="tab"><a id="lien_menu_map" target="_self" href="/map">Consulter les données</a></li>
                        <li class="tab"><a id="lien_menu_list" target="_self" href="/list">Liste des monuments</a></li>
                    </ul>-->
                </div>
            </nav>
        </header>
    
        <main>

         <ul id="slide-out" class="side-nav fixed">
            <li><div class="userView">
            <div class="background"></div>
            <a class="circle" href="#!user"></a>
            <a href="#!name"><span class="white-text name">John Doe</span></a>
            <a href="#!email"><span class="white-text email">jdandturk@gmail.com</span></a>
            </div></li>
            <h5>Menu de gestion des utilisateurs</h5>
            <div class="label">
                <label>Liste des fonctionnalités à implémenter dans la Servlet (note : après chaque action cette page sera rappelée par la servlet avec la liste des utilisateurs raffraichie et un message de confirmation</label>
            </div>
            <li><a href="#!"><i class="material-icons">cloud</i>First Link With Icon</a></li>
            <li><a href="#!">Second Link</a></li>
            <li><div class="divider"></div></li>
            <li><a class="subheader">Subheader</a></li>
            <li><a class="waves-effect" href="#!">Third Link With Waves</a></li>
      </ul>


      


            <h1>Gestionnaire d'utilisateurs</h1>  

            <!-- Message qui s'affiche lorsque la page est appelé avec un paramètre http message -->  
            <c:if test="${!empty param['message']}">  
                <h2>Reçu message : ${param.message}</h2>  
            </c:if>  


            
<<<<<<< HEAD
            <ul>  
                <li><a href="ServletUsers?action=listerLesUtilisateurs">Afficher/raffraichir la liste de tous les utilisateurs</a></li>  
                <p>  
            </ul>  
                  
            <ol>  
                <li><a href="ServletUsers?action=creerUtilisateursDeTest">Créer 4 utilisateurs de test</a></li>  

                <li>Créer un utilisateur</li>  
                <form action="ServletUsers" method="get">  
                    Nom : <input type="text" name="nom"/><br>  
                    Prénom : <input type="text" name="prenom"/><br>  
                    Login : <input type="text" name="login"/><br>  
                    <!-- Astuce pour passer des paramètres à une servlet depuis un formulaire JSP !-->  
                    <input type="hidden" name="action" value="creerUnUtilisateur"/>  
                    <input type="submit" value="Créer l'utilisateur" name="submit"/>  
                </form>  

                <li>Afficher les détails d'un utilisateur</li>  
                <form action="ServletUsers" method="get">  
                    login : <input type="text" name="login"/><br>  
                    <input type="hidden" name="action" value="chercherParLogin"/>  
                    <input type="submit" value="Chercher" name="submit"/>  
                </form>  


                <li>Modifier les détails d'un utilisateur :</li>  
                <form action="ServletUsers" method="get">  
                    Login : <input type="text" name="login"/><br>  
                    Nom : <input type="text" name="nom"/><br>  
                    Prénom : <input type="text" name="prenom"/><br>  
                    <input type="hidden" name="action" value="updateUtilisateur"/>  
                    <input type="submit" value="Mettre à jour" name="submit"/>  
                </form>  

                <li>Supprimer un utilisateur TEEEESSSST :</li>  
                <form action="ServletUsers" method="get">  
                    Login : <input type="text" name="login"/><br>    
                    <input type="hidden" name="action" value="deleteUtilisateur"/>  
                    <input type="submit" value="Supprimer" name="submit"/>  
                </form> 
            </ol>  

            <!-- Fin du menu -->  

            <!-- Zone qui affiche les utilisateurs si le paramètre action vaut listerComptes -->  
            <c:if test="${param['action'] == 'listerLesUtilisateurs'}" >  
                <h2>Liste des utilisateurs</h2>  

                <table border="10">  
                    <!-- La ligne de titre du tableau des comptes -->  
=======
            <li>Supprimer un utilisateur :</li>  
            <form action="ServletUsers" method="get">  
                Login : <input type="text" name="login"/><br>    
                <input type="hidden" name="action" value="deleteUtilisateur"/>  
                <input type="submit" value="Supprimer" name="submit"/>  
            </form> 
        </ol>  
  
        <!-- Fin du menu -->  
  
        <!-- Zone qui affiche les utilisateurs si le paramètre action vaut listerComptes -->  
        <c:if test="${param['action'] == 'listerLesUtilisateurs'}" >  
            <h2>Liste des utilisateurs</h2>  
  
            <table border="10">  
                <!-- La ligne de titre du tableau des comptes -->  
                <tr>  
                    <td><b>Login</b></td>  
                    <td><b>Nom</b></td>  
                    <td><b>Prénom</b></td>  
                </tr>  
  
                <!-- Ici on affiche les lignes, une par utilisateur -->  
                <!-- cette variable montre comment on peut utiliser JSTL et EL pour calculer -->  
                <c:set var="total" value="0"/>  
  
                <c:forEach var="u" items="${requestScope['listeDesUsers']}">  
>>>>>>> 2d42ac9f2500809fe295a8a1892ee5ee8c01c553
                    <tr>  
                        <td><b>Login</b></td>  
                        <td><b>Nom</b></td>  
                        <td><b>Prénom</b></td>  
                    </tr>  
<<<<<<< HEAD

                    <!-- Ici on affiche les lignes, une par utilisateur -->  
                    <!-- cette variable montre comment on peut utiliser JSTL et EL pour calculer -->  
                    <c:set var="total" value="0"/>  

                    <c:forEach var="u" items="${requestScope['listeDesUsers']}">  
                        <tr>  
                            <td>${u.login}</td>  
                            <td>${u.firstname}</td>  
                            <td>${u.lastname}</td>  
                            <!-- On compte le nombre de users -->  
                            <c:set var="total" value="${total+1}"/>  
                        </tr>  
                    </c:forEach>  

                    <!-- Affichage du solde total dans la dernière ligne du tableau -->  
                    <tr><td><b>TOTAL</b></td><td></td><td><b>${total}</b></td><td></td></tr>  
                </table> 

        </main>
        <footer>
        </footer>
  
=======
                </c:forEach>  
  
                <!-- Affichage du solde total dans la dernière ligne du tableau -->  
                <tr><td><b>TOTAL</b></td><td></td><td><b>${total}</b></td><td></td></tr>  
            </table>  
            <a href="ServletUsers?action=nextResult">Next</a>
            <a href="ServletUsers?action=previousResult">Previous</a>
>>>>>>> 2d42ac9f2500809fe295a8a1892ee5ee8c01c553
        </c:if>  
         <!--Import jQuery before materialize.js -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/materialize.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/script.js"></script>
    </body>  
</html>