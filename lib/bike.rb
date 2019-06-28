

class Bike
   
  attr_reader :broken
  # eq to...
  # def broken
  #   @broken
  # end

  def initialize(broken = false)
    @broken = broken
  end

  def working?
    true
  end

  def report
    @broken = true
  end

end

