require_relative "Player"

P1 = Player.new(true, 1)
P2 = Player.new(false, 2)
puts "Game Start!"
while (P1.score != 0 && P2.score != 0)
  puts "---- NEW TURN -----"
  if (P1.turn)
    P1.question()
    P1.turn = false
    P2.turn = true
  else 
    P2.question()
    P1.turn = true
    P2.turn = false
  end
  if (P1.score == 0)
    puts "Player 2 wins with score of #{P2.score}/3"
  elsif (P2.score == 0)
    puts "Player 1 wins with score of #{P1.score}/3"
  else 
    puts "P1: #{P1.score}/3 P2: #{P2.score}/3"
  end
end

puts "----- GAME OVER -----"
puts "Goodbye!"