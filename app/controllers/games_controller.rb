class GamesController < ApplicationController
  def name_action
    input_name = params[:name]
    name_upcased = input_name.upcase

    if name_upcased.first == "A"
      output_message = "Hey your name starts with an A."
    end

    render json: {
                  your_name: name_upcased,
                  message: output_message
                  }
  end

  def guess_query_action
    winning_number = 42

    input_guess = params[:user_guess].to_i


    if input_guess > winning_number
      output_message = "Try Lower"
    elsif input_guess < winning_number
      output_message = "Go Higher"
    else
      output_message = "You Win!!!!"
    end

    render json: {guess: input_guess, message: output_message}
  end

  def guess_segment_action
    winning_number = 42

    input_guess = params[:segment_guess].to_i

    if input_guess > winning_number
      output_message = "Try Lower"
    elsif input_guess < winning_number
      output_message = "Go Higher"
    else
      output_message = "You Win!!!!"
    end

    render json: {guess: input_guess, message: output_message}
  end
end