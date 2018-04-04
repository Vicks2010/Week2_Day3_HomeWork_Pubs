class Pub
  attr_reader :name, :till, :drinks

def initialize(name, till, drinks)
@name = name
@till = till
@drinks = drinks
end

def drink_count()
  return @drinks.count()
end

def receive_money(drink)
  @till += drink.price
end

def remove_drink(drink)
  @drinks.delete(drink)
end
end
