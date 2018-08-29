require "stock_picker"

RSpec.describe do
  
  describe "#stock_picker" do
    
    it "returns the most profitable pair of days" do
      expect(stock_picker([1,2,8,0,5,4])).to eq([0,2])
    end
    
    it "returns the first pair of most profitable days when tie exists" do
      expect(stock_picker([1,2,8,0,6,4])).to eq([0,2])
    end
    
    it "returns an empty array when empty array is passed in" do
      expect(stock_picker([]) ).to eq([])
    end
    
    it "raises an error when given only one day" do
      expect{ stock_picker([9]) }.to raise_exception(ArgumentError)
    end
    
  end
end