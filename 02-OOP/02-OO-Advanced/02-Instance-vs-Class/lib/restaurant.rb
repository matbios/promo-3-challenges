class Restaurant

  attr_reader :city, :name, :average_rating
  #TODO add relevant accessors if necessary

  def initialize(city, name)
    @city = city
    @name = name
    @average_rating = 0
    @all_rates = []
    #TODO: implement constructor with relevant instance variables
  end

  def rate(my_rate)
    rates_sum = 0
    @all_rates << my_rate
    @all_rates.each do |rates|
      rates_sum = rates_sum + rates
    end
    @average_rating = rates_sum / @all_rates.size
  end


  def self.filter_by_city(restaurant, city)
    resto_filtered =[]
    restaurant.each do |x|
      if x.city == city
        resto_filtered << x
      end
    end

    return resto_filtered
  end

  #TODO: implement #filter_by_city and #rate methods

end

tutu = Restaurant.new("Lyon", "Tutu le restau")
Bobo = Restaurant.new("Lyon", "Tutu le restau")
Nonnnn = Restaurant.new("Paris", "Tutu le restau")