class TennisScorer

  def initialize
    @score = "Love"
  end

  def won_point
    @score = "Fifteen"
  end

  def score
    "#{@score}-Love"
  end
end

describe TennisScorer do
  it 'can score new game when no player has scored' do
    tennis_scorer = TennisScorer.new
    expect(tennis_scorer.score).to eq('Love-Love')
  end

  it 'can score game after player one has scored once' do
    tennis_scorer = TennisScorer.new
    tennis_scorer.won_point
    expect(tennis_scorer.score).to eq ('Fifteen-Love')
  end
end