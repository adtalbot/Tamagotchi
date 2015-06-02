require('rspec')
require('pry')
require('tamagotchi')

describe(Tamagotchi) do
  describe('#initialize') do
    it('sets the name and life levels of a new Tamagotchi') do
      my_pet = Tamagotchi.new('booboo')
        expect(my_pet.name()).to(eq('booboo'))
        expect(my_pet.age()).to(eq(0))
        expect(my_pet.food_level()).to(eq(10))
        expect(my_pet.sleep_level()).to(eq(10))
        expect(my_pet.activity_level()).to(eq(10))
    end
  end
  describe('#time_passes') do
    it('decreases the amount of food the Tamagotchi has left by 1') do
      my_pet = Tamagotchi.new('booboo')
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
    end
  end
end
