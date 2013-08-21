class GamesController < ApplicationController
	def index
		@games = {"Magic Eight Ball" => magic_eight_ball_path, "Secret Number" => secret_number_guess_path, "Rock Paper Scissors" => nil}
	end

	def magic_eight_ball

	end

	def magic_eight_ball_question
		@question = params[:question]

		@answer = ["It is certain", "It is decidedly so", 
					"Without a doubt", "Yes definitely", "You may rely on it", 
					"As I see it yes", "reply hazy try again", "ask again later"].sample
	end

	def secret_number
		@numbers = (1..10)
	end

	def secret_number_guess
		numbers = (1..10)

		@guess = params[:guess].to_i
		@secret_number = params[:secret_number].to_i || numbers.to_a.sample
		@guess_is_correct = (@guess == @secret_number)
	end

	def rock_paper_scissors
		@pieces = ["rock", "paper", "scissors"]
	end

	def rock_paper_scissors_play
		@piece = ["rock", "paper", "scissors"].sample
		@users_choice = params[:throw]
		if @users_choice == @piece
			return "draw"
		elsif @users_choice == "paper" && @piece == "rock"
			return @users_choice
		elsif @users_choice == "rock" && @piece == "scissors"
			return @users_choice
		elsif @users_choice == "scissors" && @piece = "paper"
			return @users_choice
		else
			return @piece
		end

	end

	#  def rock_paper_scissors_check
	# 	peices = ["Rock", "Paper", "Scissors"]
	# # 	@choices = params[:piece]
	# # 	if @choices == peices.sample
	# # 		render :text "Its a draw"

	# # end
end
