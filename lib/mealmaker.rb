# require "mealplanner/version"

class Mealmaker

	def goodbye
		puts "See you later! Goodbye!"
	end

	def ask_for_ingridents
		i = ''
		i = gets.chomp.downcase
		while i != "e"
			puts "Enter the name of the ingrident you would like to enter:"
			ingrident = gets.chomp
			ingrident = Ingriedent.new(ingrident_name: ingriedent)
			ingrident.save
			#need to associate each ingrident to the meal that was just added
			puts "Saved!"
		end
	end

	def enter_new
		puts "Enter the name of the meal you would like to add:"
		new_meal = gets.chomp.downcase
		if Meal.exists?(meal_name: new_meal)
			puts "Meal already exists in the database!"
		else
			meal = Meal.new(meal_name: new_meal)
			meal.save
			puts "Success! #{meal.meal_name} has been saved to the database!"
			puts "Would you like to enter ingridents for this meal?" (y/n)
			input = gets.chomp.downcase
			if input == "y"
				ask_for_ingridents
			elsif input == "n"
				break
			end				
		end
	end

	def generate_random_list
		Meal.make_random_list
	end

	def view_all_items
		Meal.list_all_meals
	end

	# def meal_exists?(meal)
	# 	Meal.exists?(meal_name: meal)
	# end

	def remove_from_list
		i = false
		while i != true
			puts "Enter the name of the meal you would like to remove from the list or 'e' to exit"
			remove_meal = gets.chomp.downcase
			if Meal.exists?(meal_name: remove_meal)
				meal_to_remove = Meal.find_by(meal_name: remove_meal)
				meal_to_remove.delete
				puts "Success! The meal #{meal_to_remove.meal_name} has been removed!"
				i = true
			elsif remove_meal == "e"
				break
			else
				puts "Sorry, that meal doesn't exist"
			end
		end
	end
  
	def start
		input = ''

		while input != "q"

			puts "Welcome to the MealPlanner App! What would you like to do?"
			puts "E - Enter a new meal"
			puts "G - Generate a random list of meals"
			puts "V - View all meals I've created"
			puts "D - Delete a meal from the list"
			puts "Q - Quit the app"

			input = gets.chomp.downcase

			if input == "e"
				enter_new
			elsif input == "g"
				generate_random_list
			elsif input == "v"
				view_all_items
			elsif input == "d"
				remove_from_list
			elsif input == "q"
				goodbye
			else
				puts "Invalid selection! Please try again!"
			end
		end
	end

end
