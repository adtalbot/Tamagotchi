class Tamagotchi
  attr_reader(:name)

  define_method(:initialize) do |name|
    @name = name
    @age = 0
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
  end

  define_method(:age) do
    @age
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
    if @age < 15
      true
    else
      false
    end
  end
end
