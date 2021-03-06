require_relative 'cookbook'
require_relative 'recipe'

class Ui

  def recipes_display(recipes_list)
    puts "-- Here are all your recipes --"
    recipes_list.each.with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
    end
  end

  def add_recipe
    puts "-- Enter a new recipe name --"
    recipe_name = gets.chomp
    puts "-- Enter a new recipe description--"
    recipe_description = gets.chomp
    return [recipe_name, recipe_description]
  end

  def delete_recipe
    puts "-- Delete a recipe by specifying it's number --"
    recipe_number = gets.chomp.to_i
    return recipe_deleted = recipe_number - 1
  end

end



  # def add_recipe_succesfull(name)
  #   puts "Your #{name} recipe has been added successfully !"
  # end

  # def delete_recipe_succesfull(name)
  #   puts "Your #{name} recipe has been successfully deleted !"
  # end




#############################

  # def ask_user_choice
  #   puts "What do you wanna do?"
  #   puts "- List all recipes [list]"
  #   puts "- Add a new recipe [add]"
  #   puts "- Delete a recipe [del]"
  #   puts "- Exit [Esc.]"
  #   choice = gets.chomp
  #   return choice
  # end


# controller : Your Crumpets recipe has been successfully deleted !

  # def exit
  #   puts "Goodbye, my dear friend."
  # end


#######################


# class UI
#   TASKS = {
#     list: "- List all recipes [list]",
#     add:  "- Add a new recipe [add]",
#     del:  "- Delete a recipe [del]",
#     exit: "- Exit [exit]"
#   }

#   def initialize(controller)
#     @controller = controller
#     @running = true
#   end

#   def list
#     # TODO: call the appropriate controller method with the proper argument(s)
#     # TODO: format and display the retrieved data in a numbered list
#   end

#   def add
#     # TODO: ask the user a recipe name
#     # TODO: call the appropriate controller method with the proper argument(s)
#   end

#   def del
#     # TODO: ask the user a recipe index
#     # TODO: call the appropriate controller method with the proper argument(s)
#   end

#   def exit
#     # TODO: exit the program
#     # Hint: Take a look at the display method !
#   end

#   def user_input
#     # TODO: Get the user input and return it
#     # [OPTIONAL] You can think of the case where the user
#     # enters a wrong choice.
#   end

#   def display
#     puts "-- Welcome to the CookBook --"

#     while @running
#       print "\n"

#       display_tasks
#       dispatch(user_input)

#       print "\n"
#     end
#   end

#   ###
#   ##  You don't need to modify the following methods !
#   ###
#   def display_tasks
#     puts "What do you want to do? \n"
#     puts TASKS.values
#   end

#   # The dispatch method takes a String or a Symbol as an argument
#   # and calls the method with the same name.
#   #
#   #  Examples:
#   #
#   #   dispatch(:del) => Will call the `del` method in the current class
#   #   dispatch("add") => Will call the `add` method in the current class
#   #
#   # To understand this, read the doc : http://ruby-doc.org/core-2.1.1/Object.html#method-i-send
#   def dispatch(task)
#     self.send(task.to_sym)
#   end
# end
