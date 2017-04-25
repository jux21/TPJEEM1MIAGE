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
    <jsp:include page="header.jsp"/> 

        <!-- Message qui s'affiche lorsque la page est appelé avec un paramètre http message -->  
        <c:if test="${!empty param['message']}">  
            <h2>Reçu message : ${param.message}</h2>  
        </c:if>  


    <main>

         
        <jsp:include page="sidenave.jsp"/> 
        
        <p>Bienvenue sur le projet d'application Technologie Web M1 MIAGE 2016/2017.</p>
 
        <a href="ServletUsers?action=listerLesUtilisateurs"><span class="menulink">Afficher/raffraichir la liste de tous les utilisateurs</span></a>
        <!-- Message qui s'affiche lorsque la page est appelé avec un paramètre http message -->  
        <c:if test="${!empty param['message']}">  
            <h2>Reçu message : ${param.message}</h2>  
        </c:if>  
              
  
        <!-- Fin du menu -->  
        
        <!-- Zone qui affiche les utilisateurs si le paramètre action vaut listerComptes -->  
        <c:if test="${param['action'] == 'listerLesUtilisateurs'}" >  
            <h2>Liste des utilisateurs</h2>  
            <c:if test="${param['moreNext'] == 'yes'}" > 
                <a href="ServletUsers?action=nextResult">Next</a>
            </c:if>
            <c:if test="${param['morePrevious'] == 'yes'}" > 
                <a href="ServletUsers?action=previousResult">Previous</a>
            </c:if>
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
                    <tr>  
                        <td>${u.login}</td>  
                        <td>${u.firstname}</td>  
                        <td>${u.lastname}</td>  
                        <!-- On compte le nombre de users -->  
                        <c:set var="total" value="${total+1}"/>  
                    </tr>  
                </c:forEach>  
                
                <c:set var="total" value="${requestScope['numberOfUsers']}"/>
  
                <!-- Affichage du solde total dans la dernière ligne du tableau -->  
                <tr><td><b>TOTAL</b></td><td></td><td><b>${total}</b></td><td></td></tr>  
            </table>             
                   
        </c:if>  
        </main>
        <jsp:include page="footer.jsp"/>  
    </body>  
</html>