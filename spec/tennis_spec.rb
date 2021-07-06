class TennisScorer

  def initialize
    @score = "Love"
  end

  def won_point
    if @score == "Love"
      @score = "Fifteen"
    elsif @score == "Fifteen"
      @score = "Thirty"
    end
    
    
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

  it 'can score game after player one has scored twice' do
    tennis_scorer = TennisScorer.new
    tennis_scorer.won_point
    tennis_scorer.won_point
    expect(tennis_scorer.score).to eq ('Thirty-Love')
  end
  
end