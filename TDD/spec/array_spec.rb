require 'array'

RSpec.describe "Array methods" do
  describe "#remove_dups" do
    
    it "removes duplicates" do
      expect([1,2,1,3,3].remove_dups).to eq([1,2,3])
    end
    
    it "does not remove any elements when no duplicates exist" do
      expect([1,2,3].remove_dups).to eq([1,2,3])
    end
    
  end
  
  describe "#two_sum" do
    
    it "returns array of index pairs where elements sum to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end 
    
    
    it "returns smaller index pair first" do 
      expect([-1, 0, 2, -2, 1].two_sum[0]).to eq([0, 4])
      expect([-1, 0, 2, -2, 1].two_sum[1]).to eq([2, 3])
    end 
    
    it "returns empty array when no pairs sum to zero" do 
      expect([1, 2, 3].two_sum).to be_empty
    end 
  end
  
  describe "#my_transpose" do
    rows = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]
    cols = [
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ]
    it "transposes the matrix" do 
      expect(rows.my_transpose).to eq(cols)
    end
    
    it "returns empty array if no subarrays" do
      expect([].my_transpose).to eq([])
    end 
    
  end
end