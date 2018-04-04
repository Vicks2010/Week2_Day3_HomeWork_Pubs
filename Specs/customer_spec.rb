require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")

class CustomerTest < MiniTest::Test
def setup()
  @customer=Customer.new("Victor", 25, [])
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

end
