class ZebraController < ApplicationController
  MOVES = ["rock", "paper", "scissors"]

  def rules
    render({ :template => "game_templates/rules" })
  end

  def rock
    @comp_move = MOVES.sample
    @our_move = "rock"

    if @comp_move == @our_move
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({ :template => "game_templates/results" })
  end

  def paper
    @comp_move = MOVES.sample
    @our_move = "paper"

    if @comp_move == @our_move
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({ :template => "game_templates/results" })
  end

  def scissors
    @comp_move = MOVES.sample
    @our_move = "scissors"

    if @comp_move == @our_move
      @outcome = "tied"
    elsif @comp_move == "rock"
      @outcome = "lost"
    else
      @outcome = "won"
    end
    render({ :template => "game_templates/results" })
  end
end
