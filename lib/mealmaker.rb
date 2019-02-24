# require "mealplanner/version"

class Mealmaker

	def goodbye
		puts "See you later! Goodbye!"
	end

	def enter_new
		puts "Enter the name of the meal you would like to add:"
		new_meal = gets.chomp.downcase
		if Meal.exists?(meal_name: new_meal)
			puts "Meal already exists in the database!"
		else
			meal = Meal.new(meal_name: new_meal)
			meal.save
		end
	end

	def generate_random_list
		Meal.make_random_list
	end

	def view_all_items
		Meal.list_all_meals
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
