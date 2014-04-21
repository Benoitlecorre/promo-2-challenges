#pourquoi pas de require?

class UI
  TASKS = {
    list: "- List all recipes [list]",
    add:  "- Add a new recipe [add]",
    del:  "- Delete a recipe [del]",
    exit: "- Exit [exit]"
  }

  def initialize(controller)
    @controller = controller
    @running = true
  end

  def list
    #retrieve SI la clé de l'array est list on fait la méthode
    # TODO: call the appropriate controller method with the proper argument(s)
    # TODO: format and display the retrieved data in a numbered list

    @controller.list.each_with_index do |item, index|
      puts "#{index+1}. #{item}"
    end
  end

  def add
    puts "Which recipe do you want to add ?"
    name_recipe = gets.chomp
    @controller.add(name_recipe)
    #add(name_recipe)
    # TODO: ask the user a recipe name
    # TODO: call the appropriate controller method with the proper argument(s)

  end

  def del
    puts "Which recipe do you want to delete ?"
    choice = gets.chomp.to_i
    @controller.delete(choice)
    #delete(choix)
    # TODO: ask the user a recipe index
    # TODO: call the appropriate controller method with the proper argument(s)

  end

  def exit

    # TODO: exit the program
    # Hint: Take a look at the display method !
    @running = false
  end

  def user_input
    # "Who are you ?"
    # user_input = gets.chomp
    # return user_input
    # TODO: Get the user input and return it
    # [OPTIONAL] You can think of the case where the user
    # enters a wrong choice.
    gets.chomp
  end

  def display
    puts "-- Welcome to the CookBook --"

    while @running
      print "\n"

      display_tasks
      dispatch(user_input)

      print "\n"
    end
  end

  ###
  ##  You don't need to modify the following methods !
  ###
  def display_tasks
    puts "What do you want to do? \n"
    puts TASKS.values
  end

  # The dispatch method takes a String or a Symbol as an argument
  # and calls the method with the same name.
  #
  #  Examples:
  #
  #   dispatch(:del) => Will call the `del` method in the current class
  #   dispatch("add") => Will call the `add` method in the current class
  #
  # To understand this, read the doc : http://ruby-doc.org/core-2.1.1/Object.html#method-i-send
  def dispatch(task)
    self.send(task.to_sym)
  end
end


=begin

###Comment aborde-t-on un exercice comme celui-ci ?

L'idée, on va vouloir faire un modèle bojet - trouver une série de classes qui vont ou non
interagir entre elles et représenter le monde réel que l'on veut modéliser.

-> identifier les classes, quelles sont leurs rôles et quelles relations ont elles entre elles ?

L'idée principale -> Décrire son système avec des phrases très simples à la forme active.
En gros, on me dit :
- un cook book contient des recettes.
- une recette contient juste un titre.
- l'utilisateur peut lister des recettes.
- il peut ajouter ou supprimer une recette.
- Les recettes doivent être stockées dans une fichier CSV
    => SIMILAIRE : Un CSV stocke des recettes
    => Un CSV stocke les données d'un seul cookbook

L'idée c'est d'en faire suffisamment, ces phrases simples, pour faire des recettes.

-> On va définir quelles sont les classes que nous allons créer ?
Je prends les phrases et vais identifier les noms communs de ces phrases.
- cookbook
- nom / nom on l'utilise pas car le nom est plutôt une propriété du nom
- recette
- utilisateur / mais puisque dans ce programme on ne prend pas en compte plusieurs utilisateurs
mais seulement nous, on s'en fiche.
- csv

Je choisis donc de définir les classes cookbook, recette, utilisateur et CSV

-> Désormais on va identifier les relations entre les classes
On reprend les phrases e ton identifie les verbes
- contient (appartenance)
- lister (action)
- ajouter (action)
- supprimer(action)
- stocker (app)
Il faut différencier les actions et les appartenances.


Un cookbook contient plusieurs recettes (one to many)
Un CSV contient plusieurs recettes
Un cookbook stocke ses données grâce à la classe stockage
  => (Une instance de datastore)
  => Un cookbook encapsule un data store

-> MAJ
Un COOKBOOK contient des recettes
l'UTILISATEUR peut lister/ajouter/supprimer des RECETTES
les RECETTES sont stockées dans un DATASTORE <=> un DATASTORE stocke des recettes
un DATASTORE stocke les données d'un seul cookbook

Cookbook doit dire o voila les données, je crée un fichier pour qu'il gère lui
-même la partie fichier

Cookbook.csv est un peu une vase de données.
Cookbook représent un libre de recettes
DataStore ouvre les données.

Cookbook :
  - add_recipe
  - delete_recipe
  - recipes

DataStore / S'occupe seulement du CSV. CRUD
  - Create_recipe
  - Read_recipe/recipes
  - Update_recipe
  - Delete_recipe

Il s'agit des quatres opérations de base dans les bases de données.

data store version fichier de notre cookbook.
Il n'y pas de logique métier dans le data store.

Le datastore joue avec des données brutes, il ne comprendrait pas un tru classe recette comprend pas


=end




