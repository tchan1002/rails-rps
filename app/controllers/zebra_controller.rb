class ZebraController < ApplicationController
  def rock
    @random_move = ["rock","paper","scissors"].sample
    @outcome = "blank"

    if @random_move == "paper"
      @outcome = "We lost!"
    elsif @random_move == "scissors"
      @outcome = "We won!"
    else 
      @outcome = "We tied!"
    end

    render({:template => "game_templates/play_rock"})
  end

  def paper
    @random_move = ["rock","paper","scissors"].sample
    @outcome = "blank"

    if @random_move == "paper"
      @outcome = "We tied!"
    elsif @random_move == "scissors"
      @outcome = "We lost!"
    else 
      @outcome = "We won!"
    end

    render({:template => "game_templates/play_paper"})
  end

  def scissors
    @random_move = ["rock","paper","scissors"].sample
    @outcome = "blank"

    if @random_move == "paper"
      @outcome = "We won!"
    elsif @random_move == "scissors"
      @outcome = "We tied!"
    else 
      @outcome = "We lost!"
    end

    render({:template => "game_templates/play_scissors"})
  end

  def rules
    render({:template => "game_templates/rule_template"})
  end

end
