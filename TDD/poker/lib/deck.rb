require_relative "card"

class Deck 
  
  attr_reader :cards
  
  def initialize
    @cards = []
    Card::VALUES.each_key do |card_val|
      Card::SUITES.each_key do |suite|
        @cards << Card.new(card_val, suite)
      end
    end
      
  end 
  
  def shuffle!
    @cards.shuffle!
  end 
  
  def draw
    @cards.pop
  end
  
end 