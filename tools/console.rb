# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

meatHead = Lifter.new("Meat Head", 150)
gymbunny = Lifter.new("Gym Bunny", 60)
beefCake = Lifter.new("Beef Cake", 120)

sweatShop = Gym.new("Sweat Shop")
wrs = Gym.new ("Weight's R Us")

m1 = meatHead.sign_up(sweatShop, 200)
m2 = meatHead.sign_up(wrs, 120)
m3 = gymbunny.sign_up(sweatShop, 80)
m4 = beefCake.sign_up(wrs, 98)
m6 = beefCake.sign_up(wrs, 150)

binding.pry

puts "Gains!"
