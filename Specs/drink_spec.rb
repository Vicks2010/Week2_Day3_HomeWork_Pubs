require("minitest/autorun")
require("minitest/rg")

require_relative("../drink.rb")

class DrinkTest < MiniTest::Test
def setup()
  @drink=Drink.new("Yogi")
end
end
