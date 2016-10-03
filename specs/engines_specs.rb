require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../cars")
require_relative ("../engines")

class TestEngines < Minitest::Test

  def setup
    @one_litre = Engine.new("one_litre")
    @two_point_two_litre = Engine.new("two_point_two_litre")
  end
end
