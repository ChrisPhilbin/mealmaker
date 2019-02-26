class CreateIngridentsMealsTable < ActiveRecord::Migration

	create_table :ingridents_meals, id: false do |t|
		t.belongs_to :meals, index: true
		t.belongs_to :ingridents, index: true
	end
end