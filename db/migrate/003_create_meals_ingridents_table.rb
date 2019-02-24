class CreateMealsIngridentsTable < ActiveRecord::Migration

	create_table :meals_ingridents, id: false do |t|
		t.belongs_to :meals, index: true
		t.belongs_to :ingridents, index: true
	end
end