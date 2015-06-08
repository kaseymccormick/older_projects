=begin
Add a DinnerClub class. Each DinnerClub object represents a group of friends who go out to eat together frequently.

Dinner clubs should be able to list each member's name along with how much that person has paid during their history of membership in the club. You will use the CheckSplitter class to calculate how much each member owes for each dinner club event. Not every member goes to each event, so sometimes the check splitter is splitting a check between 4 people and sometimes it's 3 or 7 or 10 or you get the picture.
=end
=begin
# define attendee list and be ablle to acces it at any step 
 def self.attendee_list
+    ["Sally", "Frank", "Jim", "Barbra", "Tweety", "Daffy"]
+  end
# collect date and who is attending, 
# is this even needed? only if want to recall who's attended which event or how many events. Omit for now
#puts "what's the event's date?"
#event_date = gets.chomp
=end
attendee_tally_list = []

puts "who is attending"
user_input_attendees = gets.chomp.to_s
attendee_tally_list.push(user_input_attendees.split)
puts attendee_tally_list
puts attendee_tally_list.length
binding.pry

=begin
get who is attending and put the information into an array dont need value to a kay to add up later
count amount of people attending, use this as count in class TicketSplitter
# hash?

# figure out how much each person needs to pay
use class TicketSplitter
# add up meals for each person and put in the HASH
look in the hash or array for each instance and tally them
something.include?(frank) then add payment values?

# display all attendee and amount paid list THIS WILL BE A HASH created in step above
comprehensive_totals[frank, 20.10, sally, 309.10, fred, 200]
# display persons name and amount paid on request

could i use the hash inside array for this, simplify in some way or does it add to much to one task

=end
