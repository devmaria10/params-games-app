class GamesController < ApplicationController
  def name_action
    input_name = params[:name]
    name_upcase = input_name.upcase

    if name_upcase.first == "A"
      output_message = "Hey your name starts with an A."
    end 

    render json: {your_name: name_upcase, 
                  message: output_message
                 }

  end 
end