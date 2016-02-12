class Workout < ActiveRecord::Base
	has_many :grupos
	has_many :exercises, :through => :grupos
end
