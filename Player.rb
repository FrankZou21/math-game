class Player
  @@number_of_players = 0
  attr_accessor :score, :turn, :name

  def initialize(bool, name)
    @score = 3
    @turn = bool
    @name = "Player #{name}"
    @@number_of_players += 1
  end

  def question()
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "#{self.name}: What does #{num1} plus #{num2} equal?"
    answer = gets.chomp.to_i
    if (num1 + num2 == answer)
      puts "#{self.name}: Yes! you are correct"
    else 
      puts "#{self.name}: Seriously? No!"
      self.score -= 1
    end 
  end

end