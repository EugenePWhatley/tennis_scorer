class TennisScorer

  def initialize
    @score = "Love"
  end

  SCORE = {
    "Love" => "Fifteen",
    "Fifteen" => "Thirty",
    "Thirty" => "Forty"
  }.freeze

  def won_point
    @score = SCORE[@score]
  end

  def score
    "#{@score}-Love"
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
    tennis_scorer.won_point
    expect_score_to_equal('Fifteen-Love')
  end

  it 'can score game after player one has scored twice' do
    2.times { tennis_scorer.won_point }
    expect_score_to_equal('Thirty-Love')
  end

  it 'can score game after player one has scored three times' do
    3.times { tennis_scorer.won_point }
    expect_score_to_equal('Forty-Love')
  end
  
end