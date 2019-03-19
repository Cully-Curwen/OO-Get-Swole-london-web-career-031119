class Gym

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{ |m| m.gym == self }
  end

  def lifter_members
    memberships.map{ |m| m.lifter }.uniq
  end

  def lifter_members_names
    lifter_members.map{ |m| m.name }
  end

  def total_lift
    lifter_members.map{ |m| m.lift_total }.reduce(:+)
  end

end
