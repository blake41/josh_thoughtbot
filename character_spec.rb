RSpec.configure do |config|
  config.mock_framework = :mocha
end

require_relative "character"
require_relative "some_class"
describe "character" do

  it "#add_power should call talk to witch and add the returned power to the powers array" do
    character = Character.new
    some_class = SomeClass.new("flying")
    some_class.expects(:talk_to_witch).returns("flying power")
    # test spy, 4 phase of test, a bit more clear
    character.add_power(some_class)
    character.powers.should eq(["flying power"])
  end

  it "#drink_potion should add 7 to the potion and call get_healthy with that result" do
    character = Character.new
    character.expects(:get_healthy).with(12)
    character.drink_potion(5)
  end
end

# stubbing the system under test
# stubbing a private method