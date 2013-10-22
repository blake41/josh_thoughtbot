class Character

  attr_reader :powers

  def initialize
    @powers = []
  end

  def add_power(power_name)
    power = talk_to_witch(power_name)
    @powers << power
  end

  def drink_potion(potion)
    stronger_potion = potion + 7
    get_healthy(stronger_potion)
  end

private
  def talk_to_witch(power_name)
    # this does some calculation
  end

  def get_healthy(potion)
    # whatever
  end

end

# everything was public
# want to test private methods because they're complicated

# potential problems.
# if i stub talk_to_witch, and what I say it returns is NOT what it returns...
# talk_to_witch is private so i shouldn't be testing it so how do i verify it works, assuming it's 
# a complicated calculation
# should i be both stubbing a method i'm calling and checking the state of my object in the same test?

# in general do i want to check state/return value of the method? or just that a method calls 
# the things it should with the right arguments? or both?

# if i check that we call the right method, my test is coupled to the name of the method i'm calling, is that ok?