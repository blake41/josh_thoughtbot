RSpec.configure do |config|
  config.mock_framework = :mocha
end

require_relative "pokemon"
describe "pokemon" do

  it "#beat_boss should call the methods its supposed to" do
    pokemon = Pokemon.new("blake")
    pokemon.expects(:get_healthy)
    pokemon.expects(:strike)
    pokemon.expects(:defend)
    pokemon.expects(:high_attack)
    pokemon.beat_boss
  end

end