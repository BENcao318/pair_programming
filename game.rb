require './player'
require './question'

class Game
  def initialize
    @winner = nil
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @question = Question.new()
    @current_player = @player1
  end

  def start_game 
    while @winner == nil
      @question.generate_question
      puts "#{@current_player.name}: #{@question.question}"
      user_input = gets.chomp.to_i

      if user_input == @question.answer
        puts "YES! You are correct"
        switch_player
      else
        puts "#{@current_player.name}: Seriously? No!"
        switch_player
        @current_player.subtract_score
      end

      if @current_player.score == 0
        switch_player
        @winner = @current_player
      end

      puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"
      puts "---- NEW TURN ----"
    end

    puts "#{@winner.name} wins with a score of #{@winner.score}/3"
    puts "---- GAME OVER ----"
    puts "Good bye!"
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end
end