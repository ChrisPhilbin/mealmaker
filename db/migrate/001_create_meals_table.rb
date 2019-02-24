class CreateMealsTable < ActiveRecord::Migration

	create_table :meals do |t|
		t.string :meal_name
	end
end