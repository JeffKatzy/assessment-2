class Review
  attr_accessor :restaurant, :customer, :rating
  @@reviews=[]
  def initialize(customer, restaurant, rating)
    @restaurant=restaurant
    @customer=customer
    @rating=rating
    @@reviews<<self
  end

  def self.all
    @@reviews
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end
end
