require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tamagotchi")

get('/') do

  erb(:index)
end

get('/life') do
  @name = params.fetch('name')
  @food_level = params.fetch('food_level').to_i()
  @energy_level = params.fetch('play_time').to_i()
  @sleep_level = params.fetch('nap_time').to_i()
  @birthday = Time.new()
  @baby = Tamagotchi.new(@name)
  erb(:life)
end
