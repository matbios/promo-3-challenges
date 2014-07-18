require_relative 'cookbook'
require_relative 'ui'

class Controller

  def initialize
    @cookbook = Cookbook.new
    @ui = Ui.new
  end

  def fetch_and_display_recipes
    @ui.recipes_display(@cookbook.recipes_list)
  end

  def add_recipe
    name = @ui.add_recipe
    @cookbook.add(cookbook.new(name))
  end

  def delete_recipe
    recipe_id_to_delete = @ui.delete_recipe(name)
    @cookbook.remove(recipe_id_to_delete)
  end

end


# For instance :

# The UI asks the Controller to get all the recipes,
# the controller then asks the Cookbook model to provide him the needed data and hands them back to the UI.

# The UI asks the Controller to delete a specific recipe,
# the controller asks the Cookbook model to delete the recipe from the cookbook and reports back to the UI.



# class Controller
#   def initialize(file)
#     # Here you should instantiate the Cookbook model with the file
#   end

#   # TODO: Implement the methods to retrieve, add, and delete recipes through the model
# end