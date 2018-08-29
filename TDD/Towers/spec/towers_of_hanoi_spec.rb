require "towers_of_hanoi"
RSpec.describe "TowersOfHanoi" do
  subject(:game) { TowersOfHanoi.new }
  describe "#initialize" do
    it "create towers instance variable" do 
      expect( game.towers ).to exist 
    end 
    
    it "sets up first tower with 5 discs" do 
      expect( game.towers ).to eq([[5, 4, 3, 2, 1], [], []])  
    end 
  end
  
  describe "#valid_move?" do
    it "checks if the top disc on the ending tower is empty" do 
      expect( game.valid_move?(0, 1) ).to be_true
    end 
    
    it "checks if the top disc on the ending tower is smaller" do 
      game.towers[1] << game.towers[0].pop 
      expect( game.valid_move?(0, 1) ).to be_false
    end 
    
  end
  
  describe "render" do
  
  end
  
  describe "play" do
    it "calls move"
    
    it "checks if it's game over"
  end
  
  describe "won?" do
    it "returns true if all discs are on tower 2 or 3" do
      game.towers[0], game.towers[1] = game.towers[1], game.towers[0]
      expect(game.won?).to be_true
    end
    
    it "return false if any discs are on tower 1" do
      expect(game.won?).to be_false
    end
    
    it "returns false if discs are on more than 1 tower" do
      game.towers[1] << game.towers[0].pop
      expect(game.won?).to be_false
    end
  end
  
  describe "move" do
    it "prompts user for input" do
      
    
    it "calls valid move"
    
    it "calls on move_disc"
  end
  

end

