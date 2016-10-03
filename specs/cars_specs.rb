require ("minitest/autorun")
require("minitest/rg")
require_relative("../cars")
require_relative("../engines")

class TestWizard < MiniTest::Test

  def setup
    @skoda = Car.new("Skoda", 0, 100, "1.0 litre")
    @lada = Car.new("Lada", 0, 100, "2.2 litre")
    @one_litre = Engine.new(-3, 5)
    @two_point_two_litre = Engine.new(10, -5)
  end

def test_brand_name
  assert_equal("Skoda", @skoda.brand)
end

def test_accelerate
  assert_equal(10, @skoda.acceleration_speed(0))
  assert_equal(95, @skoda.acceleration_fuel(100))
end

def test_brake
  assert_equal(0, @skoda.brake_speed(0))
end

def test_acceleration_with_engine_effect_speed
  final_speed = @lada.acceleration_with_engine_effect_speed(0, "one_litre", 100)
  assert_equal(12, final_speed)
end

def test_acceleration_with_engine_effect_fuel
  final_fuel = @lada.test_acceleration_with_engine_effect_fuel(0, "one_litre", 100)
  assert_equal(94, final_fuel) 
end
end