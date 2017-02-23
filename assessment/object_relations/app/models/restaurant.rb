class Restaurant
  attr_accessor :name, :reviews_of_me, :my_customers
  @@restaurants=[]
  def initialize(name)
    @name = name
    @reviews_of_me=[]
    @my_customers=[]
    @@restaurants<<self
  end

  def self.all
    @@restaurants
  end

  def self.find_by_name(name)
    @@restaurants.find {|restaurant| restaurant.name = name}
  end

  def reviews
    @reviews_of_me
  end

  def customers
    @my_customers
  end
end

# Restaurant.all


# Restaurant.find_by_name(name)

# Restaurant#reviews
# Restaurant#customers
  # should return all of the customers who have written reviews.
