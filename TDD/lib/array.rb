class Array 
  
  def remove_dups
    result = []
    self.each do |el|
      result << el unless result.include?(el)
    end 
    result
  end 
  
  def two_sum
    result = [] 
    
    self[0...-1].each_with_index do |el1, idx1|
      self[idx1+1..-1].each_with_index do |el2, idx2|
        result << [idx1, idx2+idx1+1] if el2 + el1 == 0 
      end 
    end 
    
    result 
  end 
  
  def my_transpose
    return [] if self.empty?
    result = [] 
    (0...self[0].length).each do |idx|
      temp_row = [] 
      self.each do |subarr|
        temp_row << subarr[idx]
      end 
      result << temp_row
    end 
    result
  end
  
end 