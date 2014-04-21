require 'csv'
#a supprimer après les tests

class Cookbook

attr_reader :contents

  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    load_csv(file)
    @file = file
    #@content est notre instance variable détenue dans load_csv
  end

  def load_csv(file)
    @contents = []
      CSV.foreach(file) do|row|
        contents << row
    end
  end


    #.join convertis toutes tes strings dans un array. et la virgule/espace permet de les espacer.


  def add(name_recipe)
    @contents << name_recipe
    CSV.open(@file, "w") do |csv| #créer add file , #a ajouter à la fin #wb #read
    csv << [name_recipe]
    end

  end

  #deleter n'importe quelle recette et donc l'eraser
  def delete(choice)
    @contents.delete_at(choice -1)
    CSV.open(@file, "w") do |csv| #créer add file , #a ajouter à la fin #wb #read
      @contents.each do |name|
        csv << name
      end
    end
  end

  # TODO: Implement a save method that will write the data into the CSV
  # And don't forget to use this save method when you have to modify something in your recipes array.


end

#my_cookbook = Cookbook.new("lib/recipes.csv")
#my_cookbook.destroy(1)

#paramètre dans la définition de la méthode, argument dans l'appel de la méthode