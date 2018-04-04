class Pub
  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def pub_drink_count()
    return @drinks.count()
  end

  def receive_money(drink)
    @till += drink.price
  end

  def remove_drink(drink)
    @drinks.delete(drink)
  end

  def sell_drink_to_customer(customer, drink)
    if customer.age_check > 17
      receive_money(drink)
      customer.buy_drink(drink)
      remove_drink(drink)
    else return "Sorry, we cannot serve you!"
    end
  end
  

end
