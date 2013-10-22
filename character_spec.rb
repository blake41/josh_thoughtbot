RSpec.configure do |config|
  config.mock_framework = :mocha
end

require_relative "character"
describe "character" do

  it "#add_power should call talk to witch and add the returned power to the powers array" do
    character = Character.new
    character.expects(:talk_to_witch).with("flying").returns("flying power")
    character.add_power("flying")
    character.powers.should eq(["flying power"])
  end

  it "#drink_potion should add 7 to the potion and call get_healthy with that result" do
    character = Character.new
    character.expects(:get_healthy).with(12)
    character.drink_potion(5)
  end
end