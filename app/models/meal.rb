class Meal < ActiveRecord::Base
	has_and_belongs_to_many :ingridents

	def self.list_all_meals
		self.all.collect do |m|
			m.meal_name
		end
	end

	def make_random_list
		self.list_all_meals.shuffle
	end
end