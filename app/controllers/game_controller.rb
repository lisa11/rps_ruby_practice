class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================
    number = rand(0..2)
    computer_move = "computer is thinking"
    message = "no result yet"

    #if 0, then rock
    #if 1, then paper
    #if 2, then scissor

    if number == 0
      computer_move = "rock"
      if @user_move == "rock"
        message = "tie"
      elsif @user_move == "paper"
        message = "win"
      else
        message = "lose"
      end
    elsif number == 1
      computer_move = "paper"
      if @user_move == "rock"
        message = "lose"
      elsif @user_move == "paper"
        message = "tie"
      else
        message == "win"
      end
    elsif number == 2
      computer_move = "scissors"
      if @user_move == "rock"
        message = "win"
      elsif @user_move == "paper"
        message = "lose"
      else
        message == "tie"
      end
    end


    # Your logic here

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = computer_move

    @result = message

    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
