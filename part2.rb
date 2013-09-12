class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
  

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game.each{ |player|
     raise NoSuchStrategyError unless ["p","r","s"].index(player[1].downcase) != nil
  }
  winner_hash = {"p" => {"r" => 1, "s" => 2, "p" => 3 },
		 "r" => {"s" => 1, "p" => 2, "r" => 3 },
		 "s" => {"p" => 1, "r" => 2, "s"=> 3 }}
  winner_var = winner_hash[game[0][1]][game[1][1]]
  if  winner_var == 1 or winner_var == 3
	return game[0]
  else
        return game[1]
  end
end

def rps_tournament_winner(tournament)
puts tournament
puts "**************"
  if(!tournament[0][0].kind_of?(Array))
     rps_game_winner(tournament)
  else
     t1=rps_tournament_winner(tournament[0])
     t2=rps_tournament_winner(tournament[1])
     rps_tournament_winner([t1,t2]) 
  end
end


#puts rps_game_winner([["Jane Doe","s"],["John Doe","p"]])
tournament = [
    [
        [ ["Armando", "p"], ["Dave", "s"] ],
        [ ["Richard", "r"],  ["Michael", "s"] ]
    ],
    [
        [ ["Allen", "s"], ["Omer", "p"] ],
        [ ["David E.", "r"], ["Richard X.", "p"] ]
    ]
]
puts rps_tournament_winner(tournament)