require("minitest/autorun")
require("minitest/rg")

require_relative("../pub.rb")

class PubTest < MiniTest::Test
def setup()
  @pub=Pub.new("CodersArms", 100, [])

end

def test_get_oub_name()
  assert_equal("CodersArms", @pub.name) 

end
end
