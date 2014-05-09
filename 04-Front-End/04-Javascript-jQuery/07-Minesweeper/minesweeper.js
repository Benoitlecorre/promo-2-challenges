// Good luck!
// Les règles du jeu démineur :
// Tu cliques sur l'une des cases, cela en découvre d'autres, et chaque case
// on place d'abord les minies alétoirement dans le jeu
//
//explorer tableau par case
//    si case est vide
//        nombre := compter_mines( case.voisinage )
//        case.valeur = nombre
//Après le placement des mines, l'algorithme parcourt le tableau en entier, case par case.
//Pour chacune d'entre elles, il compte le nombre de mines
//dans le voisinage direct, et lui assigne ce nombre. Voici une implémentation simplifiée en pseudo-code :



//CREATION DU JEU

var rows = 6;
//On défifinit le nombre de lignes
var cols = 6;
//On définit le nombre de colonnes
var table = $('<table id="minesweeper"><tbody>');
//On assigne à la variable table l'objet jquery, celui-crée un html

for(var r = 0; r < rows; r++)
//Itération : tant que la variable r n'est pas égale à la variable rows que l'on a défini précédemment, on fait un +1
{
    var tr = $('<tr>');
    //On assigne l'objet jquery créateur de balise tr à la variable tr
    for (var c = 0; c < cols; c++){
      var $td = $('<td class="unopened"></td>').appendTo(tr);
      //Je crée une classe unopened que je rajoute à tr. Je le mets dans une variable car mon tr n'est pas encore dans le dom
      if(Math.random() < 0.4){
      //Si Math.random renvoie un résultat inférieur à 0,4, alors on rajoute une mine
      $td.addClass( "mine" );
      }
      else{
      $td.addClass("opened");
      }
      //Je veux rajouter une td à chaque tr mais cette td a une probabilité d'avoir une bombe mais le probleme c'est que la bombe va être révélée
    }
    //Et on rajoute tr qui contient td à table
    tr.appendTo(table);
}

table.appendTo('body');

//CREATION DES INTERACTIONS JOUEUR / PLATEAU

$("#minesweeper").on("click", "td", function() {
  if($( this ).hasClass( "mine" )){
    $(this).removeClass("unopened");
    showeverything();
    alert("You Loose ! ");
  }
  else{
    $(this).removeClass("unopened");
  }
});

//CREATION AFFICHER TOUT LE PLATEAU DE JEU

$(function showeverything(){
  $("minesweeper td").show;
  //je veux montrer toutes les classes mines et aussi celles qui sont opened
}

//CREATION DES CHIFFRESright




//créer une fonction qui met tout à plat
//On génère le tableau dans le body

//Quand je clique sur une case ça doit m'afficher son deuxieme élément
//Si je clique sur un truc qui n'est pas une bombe, ca fait rien
//Si je clique sur une bombe, ça fait perdre

//QUAND JE CLIQUE, L'ELEMENT SUR LEQUEL JE CLIQUE DOIT AFFICHER UN SECOND ETAT
//SI CE SECOND ETAT EST UNE BOMBE, ALORS IL M'ENVOIT UN MESSAGE D'ERREUR QUI
//STOPPE TOUTES MES INTERACTIONS

//sur la même ligne je checke la case avant et la case apr§s
//créer un compteur, quand tu checkes les 8 cases autour tu ajoutes la classe ne fonction du compteur







