require_relative 'cookbook'
require_relative 'ui'
require_relative 'controller'

controller = Controller.new

puts "-- Welcome to the CookBook --"

while true
  controller.fetch_and_display_recipes
  user_choice = ui.ask_user_choice
  if user_choice = "[list]"
    return controller.add_recipe
  elsif user_choice = "[add]"
    return controller.add_recipe
  elsif user_choice = "[del]"
    return controller.delete_recipe
  elsif user_choice = "[Esc.]"
    return "Goodbye, my dear friend."
  end

end

cookbook_controller = Controller.new('recipes.csv')
cookbook_ui = UI.new(cookbook_controller)

cookbook_ui.display


    # puts "- List all recipes [list]"
    # puts "- Add a new recipe [add]"
    # puts "- Delete a recipe [del]"
    # puts "- Exit [Esc.]"