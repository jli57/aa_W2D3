class Card
  VALUES = {1=>"A",2=>"2",3=>"3",4=>"4",5=>"5",6=>"6",7=>"7",8=>"8",9=>"9",10=>"10",11=>"J",12=>"Q",13=>"K"}
  SUITES = {1=>"♦️",2=>"♣️",3=>"♥️",4=>"♠️"}
  
  attr_reader :value, :suite
  
  def initialize(value, suite)
    @value = value
    @suite = suite
  end
  
  def to_str
    "#{VALUES[@value]}#{SUITES[@suite]}"
  end
end