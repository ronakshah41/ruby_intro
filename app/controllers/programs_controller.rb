class ProgramsController < ApplicationController
  def home
    # Your code goes below.
    a = ["heads", "tails", "arms", "legs"]
    @your_output = a.sample

    a.push("elbows")
    a.push("knees")
    @new_stuff = a.sample

    render("programs/home.html.erb")
  end

  def first_program
    # Your code goes below.
    a = ["rock", "paper", "scissors"]
    result = a.sample
    @your_output = result

    if result == "paper"
      @outcome = "you win"
    elsif result == "rock"
      @outcome = "you tie"
    else
      @outcome = "you lose"
    end

    render("programs/first_program.html.erb")
  end

  def second_program
    # Your code goes below.

    our_numbers = [4, 10, 6]        # Create an array of numbers
  squared_numbers = []            # Create an empty array

  our_numbers.each do |num|       # For each element in numbers, (refer to it as "num")
    square = num * num            # Square the number
    squared_numbers.push(square)  # Push it into the squared_numbers array
  end


    @your_output = squared_numbers.sum

    render("programs/second_program.html.erb")
  end

  def third_program
    numbers = (1..999).to_a

    multiples = []

    # Create list of multiples
    numbers.each do |num|       # For each element in numbers, (refer to it as "num")
      mult_3 = num/3.0
      mult_5 = num/5.0

      # Push if an integer
      if mult_3 == mult_3.floor
        multiples.push(num)
      elsif mult_5 == mult_5.floor
        multiples.push(num)
      end

    end

    @your_output = multiples.sum

    render("programs/third_program.html.erb")
  end
end
