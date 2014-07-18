require 'csv'

attr_accessor = :recipes

class Cookbook
  def initialize(file)
    @file = file
    @recipes_list = []
    read_recipes_from_csv
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
  end

  def read_recipes_from_csv
    CSV.foreach(@file) do |recipe|
      @recipes_list << recipe[0]
    end
    return @recipes_list
  end

  def add_recipe(name)
    @recipes_list << name
    write_csv
  end

  def delete_recipe(name)
    @recipes_list.delete(name)
    write_csv
  end

  def write_csv
    CSV.open(@file, "w") do |csv|
      @recipes_list.each do |recipe|
        csv << [recipe]
      end
    end
  end

  # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
  # TODO: Implement a save method that will write the data into the CSV
  # And don't forget to use this save method when you have to modify something in your recipes array.
end



# afficher la liste de recipes
  # def display_recipes_list
    # return @recipes_list
  # end


# puts tab = Cookbook.new('recipes.csv')

# tab.create_recipe("tutu la recette")

# puts tab.display_recipes_list