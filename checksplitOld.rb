=begin
Build a CheckSplitter class.

New CheckSplitter objects should have an attribute that stores the total cost of the meal.
They should have a way to define the tip amount (and a value that's set by default).
They should be able to define how many people are in the group.
They should use that information to help determine how much each person owes.
=end
#create class
class CheckSplitter
  #identify accessors defining cost as read and write
  attr_accessor :cost, :tip_percent
  #creating blueprint
  def initialize (cost, people, tip_percent)
  @cost = cost
  @people = people
  @tip_percent = tip_percent
  end 
  #figures out tip amount  
  def tip_amount
    #if not formatted x.xx
    if tip_percent >= 1
    (cost * tip_percent/100).round(2)
    #setting default tip amount of 15%
    elsif tip_percent.empty?
    (cost * 0.15).round(2)
    #if formatted x.xx
    elsif  
    (cost * tip_percent).round(2)
  else tip_percent == 0
    tip_amount = 0      
    end
    
  end

# adds tip amount to the bill  
  def total_cost
    (tip_amount + cost).round(2)
  end
# figures out each person's payment  
  def each_pays
    (total_cost / @people).round(2)
  end
end
puts "how much did the meal cost?"
cost = gets.to_f.round(2)
puts "number in your party?"
people = gets.to_i.round(2)
puts "tip percentage?"
tip_percent = gets.to_i.round(2)

check4 = CheckSplitter.new(cost, people, tip_percent)
=begin
commenting out for debugging
input
check1 = CheckSplitter.new(120.71, 4, 0.15)
check2 = CheckSplitter.new(20.32, 2, 0)
check3 = CheckSplitter.new(70.10, 3, 20)
output
puts "Example Check 1 tip amount #{check1.tip_amount}"
puts "total cost #{check1.total_cost}"
puts "each pays #{check1.each_pays}"
puts "Example Check 2 tip amount #{check2.tip_amount}"
puts "total cost #{check2.total_cost}"
puts "each pays #{check2.each_pays}"
puts "Example Check 3 tip amount #{check3.tip_amount}"
puts "total cost #{check3.total_cost}"
puts "each pays #{check3.each_pays}"
=end

puts "meal cost #{check4.cost}"
puts "Your Check tip amount #{check4.tip_amount}"
puts "Your total cost #{check4.total_cost}"
puts "each pays #{check4.each_pays}"

