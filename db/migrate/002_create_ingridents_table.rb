class CreateIngridentsTable < ActiveRecord::Migration

	create_table :ingridents do |t|
		t.string :ingrident_name
	end
end