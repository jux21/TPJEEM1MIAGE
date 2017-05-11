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
function addAddForm()
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
    form.appendChild(input);

    input = document.createElement("input");
    input.type = "submit";
    input.name = "submit";
    input.value = "Créer utilisateur";
    
    a = document.createElement("a");
    a.className = "waves-effect waves-light btn";
    a.appendChild(input);
    form.appendChild(a);

    parent.appendChild(form);

}

  

