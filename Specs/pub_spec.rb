require("minitest/autorun")
require("minitest/rg")

require_relative("../customer.rb")
require_relative("../pub.rb")
require_relative("../drink.rb")

class PubTest < MiniTest::Test
  def setup()
    @drink1 = Drink.new("Beer", 4)
    @drink2 = Drink.new("Wine", 5)
    @drink3 = Drink.new("Cider", 3)
    @drink = [@drink1, @drink2, @drink3]
    @pub = Pub.new("CodersArms", 100, @drink)
  end

  def test_get_pub_name()
    assert_equal("CodersArms", @pub.name)
  end
  def test_amount_in_till()
    assert_equal(100, @pub.till)
  end
  def test_collection_of_drinks
    assert_equal(3, @pub.drink_count)
  end

  def test_increase_money_in_till_when_drink_bought()
    @pub.receive_money(@drink1)
    assert_equal(104, @pub.till)
  end

  def test_that_the_drink_removed_when_sold
    @pub.remove_drink(@drink1)
    assert_equal(2, @pub.drink_count)

  end

end
