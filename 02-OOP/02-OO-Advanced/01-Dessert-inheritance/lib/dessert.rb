class Dessert

  attr_reader :name, :calories

  def initialize(name, calories)
      @name = name
      @calories = calories
  end

  def healthy?
    if @calories < 200
      return true
    else
      return false
    end
  end

  def delicious?
      return true
  end

end

class JellyBean < Dessert

  attr_reader :flavor

  def initialize(name, calories, flavor)
    super(name,calories)
    @flavor = flavor
  end

  def delicious?
    if @flavor == "black licorice"
      return false
    else
      return true
    end
  end

end



# Dessert inheritance
# Complete the class Dessert :
# - add getters and setters for name and calories.
# - instance methods Dessert#healthy? should return true if a dessert has less than 200 calories
# - Dessert#delicious? should return true for all desserts :)
#
# Complete JellyBean which extends Dessert
# - add a getter and setter for flavor.
# - Modify delicious? to return false if the flavor is "black licorice"
# (but delicious? should still return true for all other flavors and for all non-JellyBean desserts).