class WheelOfFortune
  attr_reader :theme, :phrase, :guesses

  def initialize(hash)
    @theme = hash[:theme]
    @phrase =  hash[:phrase]
    @guesses = []

  end

  def to_s
    @phrase.gsub!(/\w/, '_')
    return @phrase
  end

  def can_i_have?(input)
    lowercase_input = input.downcase
    lowercase_phrase = @phrase.downcase
    guesses.push(input)
      if lowercase_phrase.include? lowercase_input
       return true
       @number_of_guesses =-1
    else
      return false
    end
  end
end

  def game_over?
    if @phrase == 0

  end
end


# Checks to see if we executed this file from the command-line
# e.g. `ruby simple_jepordy.rb`
if __FILE__ == $0

  # DRIVER CODE
  j = WheelOfFortune.new( {theme: "card games", phrase: "Go fish"} )
  j.can_i_have?("g")
  j.can_i_have?("o")
  p j
  puts j # calls j.to_s

end