class Tamagotchi
  attr_reader(:name)


  define_method(:initialize) do |name|
    @name = name
    @birthday = Time.new(2015, 06, 02, 00, 00, 00)
    @food_level = 10
    @sleep_level = 10
    @energy_level = 10
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

  define_method(:energy_level) do
    @energy_level
  end

  define_method(:time_passes) do
    @food_level = @food_level - 1
  end

  define_method(:is_alive?) do
    if @birthday.min < 60
      true
    else
      false
    end
  end

  define_method(:meal_schedule) do
    if @birthday.min.==(1)
      @food_level - 1
      @energy_level + 1
        'Time for breakfast'
    elsif @birthday.min.==(5)
      @food_level - 1
      @energy_level + 1
        'Time for lunch'
    elsif @birthday.min.==(10)
      @food_level - 1
      @energy_level + 1
        'Time for dinner'
    else
      'Not time to eat yet'
    end
  end
end
