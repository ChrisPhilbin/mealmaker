class Meal < ActiveRecord::Base
	has_and_belongs_to_many :ingridents

end