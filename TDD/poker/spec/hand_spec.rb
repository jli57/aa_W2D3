require 'hand'

RSpec.describe "Hand" do
  subject(:hand) { Hand.new }
  let(:card1) {double("hand", {value: 4, suite: 1})}
  let(:card2) {double("hand", {value: 4, suite: 2})}
  let(:card3) {double("hand", {value: 4, suite: 3})}
  let(:card4) {double("hand", {value: 4, suite: 4})}
  let(:card5) {double("hand", {value: 8, suite: 2})}
  
  describe "#initialize" do
    it "sets empty array of cards" do 
      expect(hand.cards).to be_empty 
    end   
  end
  
  describe "#size" do 
    it "returns size of cards when no cards are in hand" do 
      expect(hand.size).to eq(0) 
    end
    
    it "returns size of cards" do
      hand.add_card(card1)
      expect(hand.size).to eq(1)
    end
  end 
  
  describe "#value" do
    it "returns an integer" do
      expect(hand.value).to be_a(Integer)
    end
    
    it "returns the value of the hand" do
      hand.add_card(card1)
      hand.add_card(card2)
      hand.add_card(card3)
      hand.add_card(card4)
      hand.add_card(card5)
      expect(hand.value).to eq(9999)
    end
  end
  
  describe "::compare" do
    hand.add_card(card1)
    hand.add_card(card2)
    hand.add_card(card3)
    hand.add_card(card4)
    hand.add_card(card5)
    let(:hand2) { Hand.new }
    let(:card6) {double("hand", {value: 2, suite: 1})}
    let(:card7) {double("hand", {value: 3, suite: 2})}
    let(:card8) {double("hand", {value: 4, suite: 3})}
    let(:card9) {double("hand", {value: 5, suite: 4})}
    let(:card10) {double("hand", {value: 8, suite: 2})}
    hand2.add_card(card6)
    hand2.add_card(card7)
    hand2.add_card(card8)
    hand2.add_card(card9)
    hand2.add_card(card10)

    it "takes in an array of hands" do
      expect(Hand.compare([hand, hand2])).to receive
    end
    it "returns the hand with the highest value"
    
  end 
  
  describe "#add_card" do
    it "takes in a card" do
      expect(hand).to receive(:add_card).with(card1)
    end
    
    it "places card in hand" do
      hand.add_card(card1)
      expect(hand.cards).to include(card1)
    end
    
  end
  
end 