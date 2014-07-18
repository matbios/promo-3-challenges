require 'csv'
require 'awesome_print'

require_relative 'recipe'

class Cookbook

  attr_accessor :recipes_list

  def initialize(file)
    @file = file
    @recipes_list = []
    read_recipes_from_csv
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
  end

  def read_recipes_from_csv
    CSV.foreach(@file) do |row|
      @recipes_list << Recipe.new(row[0], row[1])
    end
    return @recipes_list
  end

  def add_recipe(recipe)
    @recipes_list << recipe
    write_csv
  end

  def delete_recipe(index)
    @recipes_list.delete_at(index)
    write_csv
  end

  def write_csv
    CSV.open(@file, "w") do |csv|
      @recipes_list.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end

end

  # def recipes_display(recipes_list)
  #   puts "-- Here are all your recipes --"
  #   recipes_list.each.with_index do |recipe, index|
  #     puts "#{index + 1}. #{recipe}"
  #   end
  # end

#   # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
#   # TODO: Implement a save method that will write the data into the CSV
#   # And don't forget to use this save method when you have to modify something in your recipes array.
# end

# aller on va tester :

# puts tab = Cookbook.new('recipes.csv')

# new_recipe = Recipe.new("kiki","desc")
# tab.add_recipe(new_recipe)

# ap tab.recipes_list


