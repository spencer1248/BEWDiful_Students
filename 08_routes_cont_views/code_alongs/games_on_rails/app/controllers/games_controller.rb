class GamesController < ApplicationController
  def index
    @games = {
      "Magic Eight Ball" => magic_eight_ball_path, 
      "Secret Number" => secret_number_path, 
      "Rock Paper Scissors" => nil
    }
  end

  def magic_eight_ball
  end

  def magic_eight_ball_question
    @question = params[:question]

    @answer = [
      "It is certain",
      "Reply hazy try again",
      "Don't count on it"
    ].sample
  end

  def secret_number
    @numbers = (1..10)
  end

  def secret_number_guess
    numbers = (1..10)

    if params[:secret_number].present?
      secret_number_param = params[:secret_number].to_i
    else
      secret_number_param = nil
    end

    @guess = params[:guess].to_i

    @secret_number = secret_number_param || numbers.to_a.sample

    @guess_is_correct = (@guess == @secret_number)
  end
end