require_relative 'cookbook'
require_relative 'recipe'
require_relative 'ui'

class Controller

  def initialize(cookbook)
    @cookbook = cookbook
    @ui = Ui.new
  end

  def list
    @ui.recipes_display(@cookbook.recipes_list)
  end

  def create
    recipe_added = @ui.add_recipe
    @cookbook.add_recipe(Recipe.new(recipe_added.first, recipe_added.last))
  end

  def destroy
    recipe_id_to_deleted = @ui.delete_recipe
    @cookbook.remove_recipe(recipe_id_to_deleted)
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