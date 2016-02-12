class Exercise < ActiveRecord::Base
	has_many :grupos
	has_many :workouts, :through => :grupos
end
