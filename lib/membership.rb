class Membership

  attr_reader :cost, :lifter, :gym

  @@all = []

  def initialize(lifter_Object, gym_Object, cost_Num)
    @cost = cost_Num
    @lifter = lifter_Object
    @gym = gym_Object

    @@all << self
  end

  def self.all
    @@all
  end

end
