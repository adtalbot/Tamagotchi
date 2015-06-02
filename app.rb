require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tamagotchi")

get('/') do
  erb(:index)
end

get('/life') do
  @name = params.fetch('name')
  @food = params.fetch('food_level').to_i()
  @energy = params.fetch('play_time').to_i()
  @sleep = params.fetch('nap_time').to_i()
  @birthday = Time.new()
  @baby = Tamagotchi.new(@name)
  @life_status = @baby.final_score()
  erb(:life)
end
