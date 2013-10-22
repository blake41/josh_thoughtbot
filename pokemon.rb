class Pokemon

  def initialize(name)
    @name = name
  end

  def beat_boss
    get_healthy
    strike
    defend
    high_attack
  end

private
  def get_healthy
    # i don't care what this does
  end

  def strike
    # i don't care what this does
  end

  def defend
    # i don't care what this does
  end

  def high_attack
    # i don't care what this does
  end

end

# is beat_boss doing too much?
# is it ok to just make sure it calls all the methods it should?
