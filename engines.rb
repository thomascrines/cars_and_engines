class Engine

  attr_reader(:speed_difference, :fuel_difference)

  def initialize(speed_difference, fuel_difference)
    @speed_difference = speed_difference
    @fuel_difference = fuel_difference
  end

  def engine_speed_effect(speed)
    if engine(size) == one_litre
    speed = speed += 2
    if engine(size) == two_point_two_litre
    speed = speed += 5
    end
  end

  def engine_fuel_effect(fuel_level)
    if engine(size) == one_litre
    fuel_level = fuel_level -= 1
    if engine(size) == one_litre
    fuel_level = fuel_level -= 5
    end
  end
  end
  end
  end
