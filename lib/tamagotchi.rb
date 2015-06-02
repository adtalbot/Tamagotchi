class Tamagotchi
  attr_reader(:name)

  define_method(:initialize) do |name|
    @name = name
    @birthday = Time.new(2015, 06, 02, 00, 00, 00)
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
  end

  define_method(:birthday) do
    @birthday
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:time_passes) do
    @food_level = @food_level - 1
  end

  define_method(:is_alive?) do
    if @birthday.hour < 12
      true
    else
      false
    end
  end

  # define_method(:meal_schedule) do
  #   meal_time = Time.new(2015, 06, 02, 00, 00, 00)
  #   breakfast = meal_time.hour + 6
  #   lunch = breakfast + 6
  #   dinner = lunch + 6
  # end
end
