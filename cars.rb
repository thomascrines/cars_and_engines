class Car

  attr_reader(:brand, :fuel_level, :speed)

    def initialize(brand, speed, fuel_level, engine_size)
      @brand = brand
      @speed = speed
      @fuel_level = fuel_level
      @engine_size = engine_size
    end

    def acceleration_speed(speed)
      speed += 10
    end

    def acceleration_fuel(fuel_level)
      if fuel_level >= 5
      fuel_level -= 5
      else fuel_level = 0
      end
    return fuel_level
    end

    def brake_speed(speed)
      if speed >= 10
        speed -= 10
      else speed = 0
      end
    end

    def acceleration_with_engine_effect_speed(speed, engine)
      speed.acceleration_speed(speed).engine_speed_effect(engine)
    end

    def acceleration_with_engine_effect_fuel(fuel_level, engine)
      fuel_level.acceleration_fuel(fuel_level).engine_fuel_effect(engine)
    end
    end