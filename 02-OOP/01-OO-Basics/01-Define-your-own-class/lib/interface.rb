# lib/interface.rb
require_relative "restaurant"

italian_parisian_restaurant = Restaurant.new("italian", 12, "Paris")
japanese_tokyoite_food = Restaurant.new("japanese", 6, "Tokyo")


italian_parisian_restaurant.fully_booked

japanese_tokyoite_food.fully_booked
