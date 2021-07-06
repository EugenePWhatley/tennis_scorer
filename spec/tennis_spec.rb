describe TennisScorer do
  it 'can score new game when no player has scored' do
    tennis_scorer = TennisScorer.new
    score = tennis_scorer.score
    expect(score).to eq('Love-Love')
  end
end