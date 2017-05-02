/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

 // Initialize collapse button
  $(".button-collapse").sideNav();
  
  
  // Initialize collapsible (uncomment the line below if you use the dropdown variation)
//  $('.collapsible').collapsible();

var cpt = 0;
function addForm()
{
    cpt++;
    var parent = document.getElementById("containerForForms");
    var form = document.createElement("form");
    var input;
    var a;
    
    form.action = "ServletUsers";
    form.method = "get";
    input = document.createElement("input");
    input.type = "text";
    input.name = "nom"+cpt;
    form.appendChild(input);
    
    input = document.createElement("input");
    input.type = "text";
    input.name = "prenom"+cpt;
    form.appendChild(input);
    
    input = document.createElement("input");
    input.type = "text";
    input.name = "login"+cpt;
    form.appendChild(input);
    
    input = document.createElement("input");
    input.type = "hidden";
    input.name = "action";
    input.value = "creerUnUtilisateur";
    
    a = document.createElement("a");
    a.class = "waves-effect waves-light btn";
    form.appendChild(a);
    
    input = document.createElement("input");
    input.type = "submit";
    input.name = "submit";
    input.value = "Créer utilisateur";
    a.appendChild(input);
    form.appendChild(a);

    parent.appendChild(form);

    /*parent.innerHTML += 
     <form  action="ServletUsers" method="get">  
                        Nom : <input type="text" name="nom"/><br>  
                        Prénom : <input type="text" name="prenom"/><br>  
                        Login : <input type="text" name="login"/><br> 
                        <!-- Astuce pour passer des paramètres à une servlet depuis un formulaire JSP !-->  
                        <input type="hidden" name="action" value="creerUnUtilisateur"/> 
                        <a class="waves-effect waves-light btn"><input type="submit" value="Créer utilisateur" name="submit"></a>
                    </form> 
               
                    'Nom : <input type="text" name="nom'+cpt+'"/><br>'+  
                    'Prénom : <input type="text" name="prenom'+cpt+'"/><br>'+  
                    'Login : <input type="text" name="login'+cpt+'"/><br>'+   
                    '<button class="btn-floating btn-large waves-effect waves-light green center" onclick="addForm()"/></button>' 
                    ;*/
}

  

