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

describe TennisScorer do
  let(:tennis_scorer) { TennisScorer.new } 

  def expect_score_to_equal(expected_score)
    expect(tennis_scorer.score).to eq(expected_score)
  end

  it 'can score new game when no player has scored' do
    expect_score_to_equal('Love-Love')
  end

  it 'can score game after player one has scored once' do
    tennis_scorer.player_1_scored
    expect_score_to_equal('Fifteen-Love')
  end

  it 'can score game after player one has scored twice' do
    2.times { tennis_scorer.player_1_scored }
    expect_score_to_equal('Thirty-Love')
  end

  it 'can score game after player one has scored three times' do
    3.times { tennis_scorer.player_1_scored }
    expect_score_to_equal('Forty-Love')
  end

  it 'can score game after player one has scored once' do
    tennis_scorer.player_2_scored
    expect_score_to_equal('Love-Fifteen')
  end

  it 'can score game after player two has scored twice' do
    2.times { tennis_scorer.player_2_scored }
    expect_score_to_equal('Love-Thirty')
  end

  it 'can score game after player two has scored three times' do
    3.times { tennis_scorer.player_2_scored }
    expect_score_to_equal('Love-Forty')
  end
end