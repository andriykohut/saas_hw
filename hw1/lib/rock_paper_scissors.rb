class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    rules = {
      'R' => 'S',
      'S' => 'P',
      'P' => 'R'
    }
    [player1, player2].each do |player|
      raise NoSuchStrategyError.new "Strategy must be one of R,P,S" if !rules.keys.include? player[1]
    end
    if rules[player1[1]] == player2[1] || player1[1] == player2[1]
      winner = player1
    else
      winner = player2
    end
    winner
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
  end

end
