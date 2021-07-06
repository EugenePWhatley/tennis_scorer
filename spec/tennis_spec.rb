class TennisScorer
  def score
    'Love-Love'
  end
end

describe TennisScorer do
  it 'can score new game when no player has scored' do
    tennis_scorer = TennisScorer.new
    expect(tennis_scorer.score).to eq('Love-Love')
  end
end