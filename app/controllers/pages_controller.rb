class PagesController < ApplicationController
  def home
    render({ :template => "pages_templates/home" })
  end

  def roll
    @num_dice = params.fetch("dice").to_i
    @num_sides = params.fetch("sides").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@num_sides)

      @rolls.push(die)
    end
    render({ :template => "pages_templates/roll" })
  end
end
