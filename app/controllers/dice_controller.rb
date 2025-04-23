class DiceController < ApplicationController
  def homepage
    render({ :template => "dice_templates/home"})
  end

  def dynamic
    @rolls = []

    @num_dice = params.fetch("number_of_dice").to_i
    @num_sides = params.fetch("number_of_sides").to_i
  

    @num_dice.times do
      die = rand(1..@num_sides)  
      @rolls.push(die)
      
    end
    render({ :template => "dice_templates/dynamic"})
  end

  

end
