class WelcomeController < ApplicationController
  def index
  	@my_hash = {"Alex" => "alex@techtalentsouth.com",
  				"Jordan" => "jordan@gmail.com"}

  	@name = "John"
  	@message = "He's alright."
  	@height = 70
  	@weight = 250

  	if @height > 65 && @weight > 200
  		@message = "this is a big dude he's #{@height} inches tall and #{@weight} pounds"	
  	elsif @height > 65 && @weight < 200	
  		@message = "tall but skinny"
  	else
  		@message = "he's sorta tall"
  	end			


  			puts "******"
  			puts @my_hash
  end

  def about
  	@height = 72
  end	

  def grade
 
  		@grades_hash = {"TJ" => 75,
  						"Alex" => 90,
  						"Mike" => 80}
  		@tj_grade = @grades_hash["TJ"]

  		if @tj_grade >= 90
  			@letter_grade = 'A'
  		elsif @tj_grade >=80 && @tj_grade < 90
  			@letter_grade = 'B'
  		elsif @tj_grade >= 70 && @tj_grade <80
  			@letter_grade = 'C'
  		end		

    end
end