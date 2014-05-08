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



//DEFINIR UNE GRILLE DE SIX PAR SIX

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
    for (var c = 0; c < cols; c++)
    //Itération : tant que la variable c n'est pas égale à la variable cols que l'on a défini précédemment, on fait un +1
        $('<td class="unopened"></td>').appendTo(tr); //fill in your cells with something meaningful here
    //On rajoute à la fin de chaque tr une td class="unopened"
    tr.appendTo(table);
    //Et on rajoute tr qui contient td à table
}

table.appendTo('body');
//On génère le tableau dans le body

//PEUPLER LA GRILLE AVEC DES BOMBES

