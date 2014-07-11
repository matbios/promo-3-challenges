def poor_calories_counter(burger, side, beverage)

calories = {
"Cheese Burger" => 290,
"Big Mac" => 300,
"Mc Bacon" => 400,
"Royal Cheese" => 130,
"French fries" => 130,
"Potatoes" => 130,
"Coca" => 160,
"Sprite" => 170
}

total_calories = calories[burger] + calories[side] + calories[beverage]
#puts total_calories
end

#TODO: return number of calories for this mcDonald order
# poor_calories_counter("Big Mac", "Potatoes", "Sprite")


def calories_counter(*orders)

  calories = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170,
    "Happy Meal" => poor_calories_counter("Cheese Burger", "French fries", "Coca"),
    "Best of Big Mac" => poor_calories_counter("Big Mac", "French fries", "Coca"),
    "Best Of Royal Cheese" => poor_calories_counter("Royal Cheese", "Potatoes", "Sprite")
  }

  total_calories = 0
  orders.each do |one_order|
    total_calories += calories[one_order]
  end
  return total_calories
    #TODO: return number of calories for a less constrained order
end

puts calories_counter("Happy Meal", "Mc Bacon")

