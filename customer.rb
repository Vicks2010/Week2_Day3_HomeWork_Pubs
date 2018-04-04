class Customer
  attr_reader :name, :wallet, :drinks

  def initialize(name, wallet, drinks)
    @name = name
    @wallet = wallet
    @drinks = drinks
  end
def buy_drink(pub, drink)
@drinks.push(drink)
end
def drink_count()
  return @drinks.count()
end
end
