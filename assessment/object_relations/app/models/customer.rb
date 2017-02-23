class Customer
  attr_accessor :name, :my_reviews
  @@customers=[]

  def initialize(name)
    @name = name
    @my_reviews=[]
    @@customers<<self

  end

  def self.all
    @@customers
  end

  def self.find_by_name(name)
    @@customers.find {|customer| customer.name = name}
  end

  def add_review(restaurant, string)
    new_review=Review.new(self,restaurant,string)
    self.my_reviews<<new_review
    restaurant.reviews_of_me<<new_review
    restaurant.my_customers<<self
  end

end
# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
