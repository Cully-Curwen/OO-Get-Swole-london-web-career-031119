class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{ |m| m.lifter == self }
  end

  def gym_memberships
    memberships.map{ |m| m.gym }.uniq
  end

  def self.average_lift
    Lifter.all.map{ |lifter| lifter.lift_total }.reduce(:+) / gym_memberships.count
  end

  def total_cost
    memberships.map{ |m| m.cost }.reduce(:+)
  end

  def sign_up(gym_Object, cost_Num)
    Membership.new(self, gym_Object, cost_Num)
  end

end
