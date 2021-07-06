class TennisScorer
  def initialize
    @player_one_score = "Love"
    @player_two_score = "Love"
  end

  SCORE = {
    "Love" => "Fifteen",
    "Fifteen" => "Thirty",
    "Thirty" => "Forty"
  }.freeze

  def player_1_scored
    @player_one_score = SCORE[@player_one_score]
  end

  def player_2_scored
    @player_two_score = SCORE[@player_two_score]
  end
  
  def score
    "#{@player_one_score}-#{@player_two_score}"
  end
end