require('rspec')
require('pry')
require('tamagotchi')

describe(Tamagotchi) do
  describe('#initialize') do
    it('sets the name and life levels of a new Tamagotchi') do
      my_pet = Tamagotchi.new('booboo')
        expect(my_pet.name()).to(eq('booboo'))
        expect(my_pet.birthday()).to(eq(Time.new(2015, 06, 02, 00, 00, 00)))
        expect(my_pet.food_level()).to(eq(10))
        expect(my_pet.sleep_level()).to(eq(10))
        expect(my_pet.energy_level()).to(eq(10))
    end
  end

  describe('#time_passes') do
    it('decreases the amount of food the Tamagotchi has left by 1') do
      my_pet = Tamagotchi.new('booboo')
      my_pet.time_passes()
        expect(my_pet.food_level()).to(eq(9))
        expect(my_pet.energy_level()).to(eq(9))
        expect(my_pet.sleep_level()).to(eq(9))
    end
  end

  describe('#is_alive?') do
    it('is alive if age is less than 15') do
    my_pet = Tamagotchi.new('booboo')
    my_pet.birthday()
      expect(my_pet.is_alive?()).to(eq(true))
    end
  end

  describe('#meal_schedule') do
    it('sets a meal for every minute') do
    my_pet = Tamagotchi.new('booboo')
    my_pet.birthday.min()
      expect(my_pet.meal_schedule()).to(eq('Not time to eat yet'))
    end
  end
  describe('#final_score') do
    it('assigns a score to the remaining values of food, sleep, and energy') do
      my_pet = Tamagotchi.new('booboo')
      expect(my_pet.final_score()).to(eq(10))
    end
  end
end
