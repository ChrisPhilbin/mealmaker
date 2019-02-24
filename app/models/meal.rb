class Meal < ActiveRecord::Base
	has_and_belongs_to_many :ingridents

	def list_all_meals
		self.collect do |m|
			m.meal_name
		end
	end
end