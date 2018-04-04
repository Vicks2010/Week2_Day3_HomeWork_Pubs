require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drink.rb")

class CustomerTest < MiniTest::Test
def setup()
  @customer = Customer.new("Victor", 25, [])
  @drink1 = Drink.new("Beer", 4)
  @drink2 = Drink.new("Wine", 5)
  @drink3 = Drink.new("Cider", 3)
  @drink = [@drink1, @drink2, @drink3]
  @pub = Pub.new("CidersArms", 100, @drink)
end

def test_get_customer_name()
  assert_equal("Victor", @customer.name)
end

def test_get_customer_money()
  assert_equal(25, @customer.wallet)
end

def test_get_customer_drinks()
  assert_equal([], @customer.drinks)
end
 def test_customer_has_one_drink()
   @customer.buy_drink(@pub, @drink1)
   assert_equal(1, @customer.drink_count)
 end
 def test_customer_wallet_amount_has_reduced
   @customer.buy_drink(@pub, @drink1)
   assert_equal(21, @customer.wallet)
 end
end
