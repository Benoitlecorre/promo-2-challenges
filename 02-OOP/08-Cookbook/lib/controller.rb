require_relative 'cookbook'

class Controller#va faire le lien avec la fonction que tu appelles dans ton UI.


  def initialize(file)
    # Here you should instantiate the Cookbook model with the file
    @cookbook = Cookbook.new(file)
  end

  def list
    @cookbook.contents
  end

  def add(name_recipe)
    @cookbook.create(name_recipe)
  end

  def delete(choice)
    @cookbook.destroy(choice)
  end



  # TODO: Implement the methods to retrieve, add, and delete recipes through the model
end
