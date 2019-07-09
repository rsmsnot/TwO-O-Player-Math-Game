require './players'
require './questions'

puts "****************************************"
puts "||                                    ||"
puts "||   ARE YOU READY TO PLAY THE MOST   ||"
puts "||   DIFFICULT GAME ON PLANET EARTH?  ||"
puts "||                                    ||"
puts "****************************************"


puts "-------------------------------"
puts "Player 1, what is your name?"
print "=> "
p1 = gets.chomp
player1 = Player.new(p1)

puts "-------------------------------"
puts "Player 2, what is your name?"
print "=> "
p2 = gets.chomp
player2 = Player.new(p2)

player_turn = 1

while (player1.still_alive? && player2.still_alive?) do
	
    player = (player_turn == 1) ? player1 : player2
  
    question = Question.new()
  
    puts "-----------NEW TURN-----------"
  
    puts "#{player.name}, your questions is:"
    puts "#{question.print}"
   
  
    answer = gets.chomp.to_i

    if answer == question.answer
        puts "That is correct!!!! #{player.name} has #{player.lives} lives remaining "
        "-------------------------------"
  elsif
    player.lives -= 1
    puts "That is incorrect!!! #{player.name} has #{player.lives} lives remaining "
    "-------------------------------"
  end
  player_turn = (player_turn + 1) % 2
end

if player1.lives == 0
    
    puts "****************************************"
    puts "||                                    ||"
    puts "||            GAME OVER               ||"
    puts "||                                    ||"
    puts "****************************************"
    puts "-------------------------------" 
    puts "#{player2.name} wins with #{player2.lives}/3 lives remaining"
    puts "-------------------------------"
    puts "****************************************"
    puts "||                                    ||"
    puts "||        #{player1.name}, please visit          ||"
    puts "|| https://www.basic-mathematics.com/ ||"
    puts "||                                    ||"
    puts "****************************************"

 elsif player2.lives == 0
    puts "****************************************"
    puts "||                                    ||"
    puts "||            GAME OVER               ||"
    puts "||                                    ||"
    puts "||                                    ||"
    puts "****************************************"
    puts "-------------------------------" 
    puts "#{player1.name} wins with #{player1.lives}/3 lives remaining"
    puts "-------------------------------"
    puts "****************************************"
    puts "||                                    ||"
    puts "||        #{player2.name}, please visit          ||"
    puts "|| https://www.basic-mathematics.com/ ||"
    puts "||                                    ||"
    puts "****************************************"
 end
