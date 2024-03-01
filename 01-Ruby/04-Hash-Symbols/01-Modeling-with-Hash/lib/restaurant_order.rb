def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this restaurant order

  ITEM_CALORIES[burger] + ITEM_CALORIES[side] + ITEM_CALORIES[beverage]
end

ITEM_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 450,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70, "Lemonade" => 90
}
