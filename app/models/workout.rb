class Workout < ActiveRecord::Base
	has_many :grupos
	has_many :exercises, :through => :grupos




	#maybe use these, maybe not
	
	def self.by_name
    order(:name) #this is car.all.order(:model) but because we're calling self. we don't need it
  end

  def self.by_length 
    order(:length)
  end

  def change_name(new_name)# currently this method is case sensitive and will see 'abs' and 'Abs as two different strings'
      if self.name == new_name
        "The workout is already named #{name}."
      else
        self.update(name: new_name)
        "Your workout has been renamed #{new_name}."  
      end
  end


end
