# TODO: Define your View class here, to display elements to the user and ask them for their input

class View
  def display_list(recipes)
    recipes.each_with_index do |recipe, i|
      puts " #{i + 1} #{recipe.name} #{recipe.description}"
    end
  end

  def ask_user_for_name
    puts "Quel est le nom de votre recette?"
    print "> "
    gets.chomp
  end

  def ask_user_for_description
    puts "Quels sont les ingrédients ?"
    print "> "
    gets.chomp
  end

  def ask_user_for_recipe_id
    puts "Quel numéro de recette souhaitez vous supprimer ?"
    print "> "
    return gets.chomp.to_i - 1
  end
end
