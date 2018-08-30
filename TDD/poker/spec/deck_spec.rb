require 'deck'

RSpec.describe "Deck" do 
  subject(:deck) { Deck.new }
  describe "#initialize" do 
    it "makes all cards Card objects" do 
      deck.cards.all? do |card|
        expect(card).to be_a(Card)
      end
    end 
    
    it "sets up a deck of 52 cards" do 
      expect(deck.cards.length) == 52
    end 
    
  end 
  
  describe "#shuffle!" do 
    
    it "puts cards in a differnt order" do 
      original_cards = deck.cards.dup
      deck.shuffle!
      expect(deck.cards).to_not eq(original_cards)
    end 
  end 
  
  describe "#draw" do 
    it "returns the top card of the deck" do
      first_card = deck.cards[-1]
      expect(deck.draw).to eq(first_card)
    end 
    
    it "removes the card from the deck" do
      first_card = deck.cards[-1]
      deck.draw
      expect(deck.cards).to_not include(first_card)
    end 
  end 

end 