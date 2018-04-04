class Customer
  attr_reader :name, :wallet, :drinks,:age

  def initialize(name, wallet, drinks, age)
    @name = name
    @wallet = wallet
    @drinks = drinks
    @age = age
  end

  def buy_drink(drink)
    @drinks.push(drink)
    @wallet -= drink.price
  end

  def drink_count()
    return @drinks.count()
  end

  def age_check()
    return @age
  end

end
