require("minitest/autorun")
require("minitest/rg")

require_relative("../pub.rb")

class PubTest < MiniTest::Test
def setup()
  @pub=Pub.new("CodersArms", 100, [])

end

def test_get_pub_name()
  assert_equal("CodersArms", @pub.name)
end
def test_amount_in_till()
  assert_equal(100, @pub.till)
end
def test_collection_of_drinks
  assert_equal([], @pub.drinks)

end

end
