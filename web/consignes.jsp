<%-- 
    Document   : consignes
    Created on : 25 avr. 2017, 11:52:00
    Author     : Utilisateur
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
    
<jsp:include page="header.jsp"/> 


<main>

        <jsp:include page="sidenave.jsp"/> 
        <h1>Hello World!</h1>
        <ol>
           <li>Relire le chapitre du cours consacré aux Entity Beans et à JPA (c'est un brève introduction, il y a encore beaucoup à dire sur le sujet) :
           IntroAuxEntityPart1.pptx</li>

           <li>Utiliser les petits mémento sur le langage JPQL : 578415 AppD_F.pdf et aussi une page A4 de référence rapide (obligatoire !) : 
           software_architecture2008-ejbql-quickref.pdf vous avez aussi la référence complète ici :
           http://download.oracle.com/docs/cd/E...3_langref.html</li>

           <li>Compléter l'implémentation des fonctionnalités (celles présentes dans la page jsp) dans le gestionnaire et dans la servlet  ! 
           Allez, au travail ;-) </li>


           <li>On veut pouvoir rechercher/modifier/ajouter/supprimer un ou plusieurs utilisateurs. 
           On veut pouvoir récupérer tous les utilisateurs 10 par 10 pour pouvoir faire de la pagination lors de l'affichage 
           (regardez la partie du cours sur JPQL).</li>

           <li>Rajoutez dans la JSP un template et une jolie CSS comme dans le TP1,</li>

           <li>Rajoutez en haut de la page un header avec login/password, un menu à gauche pour choisir les différentes opérations 
           (afficher tous les utilisateurs, créer un utilisateur, etc...), dans la partie principale de la page, 
           apparaitra l'interface utilisateur correspondant à la fonction choisie. Par exemple, 
           si on choisit de créer un utilisateur (on suppose qu'on a le formulaire dans le menu à gauche), 
           ou si on choisit de créer des utilisateurs de test, ou si on choisit de faire une recherche, 
           la page principale affichera la liste des utilisateurs.</li>

           <li>Maintenant, on veut un bout de code qui ne crée pas 4 utilisateurs, mais 30 ou plus ! Si il y en a plus de 10, 
           des boutons ou des liens "suivants"/"précédents" ou "1-10, 10-20, etc." apparaitront pour proposer la pagination.  
           Bien entendu il faudra que vos requêtes JPQL ne récupèrent que les données à afficher (voir start, max etc). 
           Souvenez-vous que je vous ai parlé d'un site http://www.generatedata.com/</li>

           <li>Bien entendu, on ne peut rien faire si on est pas loggué !!!!! Soit vous codez une vérification de password en dur, 
           soit vous rajoutez des champs login et password dans la base de données ! Vous devrez gérer le session avec une session HTTP 
           (cf cours sur les Servlets).</li>

           <li>Le TP sera plus tard à rendre en binôme avec des bouts du TP3. Il servira de base au projet, 
           il est donc important que vous ayez codé dans l'EJB session/gestionnaire les fonctionnalités nécessaires au CRUD sur les utilisateurs. 
           Les modalités de rendu vous seront communiquées ici même très bientôt. </li>
        </ol>
    </body>
</html>
