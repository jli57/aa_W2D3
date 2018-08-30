require 'card'

RSpec.describe "Card" do
  subject(:card) { Card.new(4, 3)}
  describe "#initialize" do
    it "sets a value" do
      expect(card.value).to eq(4)
    end
    
    it "sets a suite" do
      expect(card.suite).to eq(3)
    end
  end
  
  describe "#to_str" do
    it "returns symbol for both value and suite" do
      expect(card.to_str).to eq("4♥️")
    end
  end

end
  
  