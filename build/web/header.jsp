<%-- 
    Document   : header
    Created on : 24 avr. 2017, 23:38:19
    Author     : Cécile
--%>


   
        <header>
            <!--HEADER-->
            <nav class="nav-extended #7cb342 light-green darken-1" role="navigation">
                <div class="nav-wrapper">      
                    <a href="/" class="brand-logo flow-text">
                        <i class="material-icons">stay_primary_portrait</i>
                        <span class="hide-on-small-only flow-text">TP JEE</span>
                    </a> 
                    <form action="ServletLogin" method="get">  
                    <ul class="right hide-on-med-and-down">
                        <li>login :</li>
                         <li><input type="text" name="login_connexion"/></li>
                          <li>password :</li>
                           <li><input type="text" name="password"/></li>
                           <input type="hidden" name="action" value="connexion"/>
                            <li><a class="waves-effect waves-light btn"><input type="submit" value="envoyer" name="connexion"/></a></li>
                    </ul>
                    </form>
                    <!--<ul class="tabs tabs-transparent">
                        <li class="tab"><a id="lien_menu_accueil" target="_self" href="/">Accueil</a></li>
                        <li class="tab"><a id="lien_menu_map" target="_self" href="/map">Consulter les données</a></li>
                        <li class="tab"><a id="lien_menu_list" target="_self" href="/list">Liste des monuments</a></li>
                    </ul>-->
                </div>
            </nav>
        </header>

 <!--Import jQuery before materialize.js -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/materialize.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/script.js"></script>

<script>$(document).ready(function(){
    Materialize.updateTextFields();
  });</script>


 

