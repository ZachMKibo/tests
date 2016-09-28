# This is a simple ruby script for familiarity
# To show some ruby basics, I'll ask for some personal info.
# Let's start by asking your name
puts "What is your name?"
name = String(gets.chomp)
puts "\nNice to meet you, #{name}."

# Now we'll ask for your age
puts "\nSo, what is your age?"
age = Integer(gets.chomp)
print "\nYou're #{age}? "

if age < 21
  puts "Wow, you're still just a kid!"
elsif ( age >= 21 ) && ( age <= 50 )
  puts "Ha, still young!"
elsif ( age >= 50 ) && ( age <= 116 )
  puts "I hope you're retired!"
else
  puts "How are you alive...?"
  abort
end

if age < 1
  puts "You're not taking this seriously..."
  abort
end

puts "That means you were born in #{2016 - age}."

# Now for some location questions
states = {
	"Texas" => "You're, a local!",
	"New York" => "Life in the big apple, so cool!",
	"Nevada" => "I bet you looooove Vegas.",
	"Alaska" => "How do you like the heat here?",
	"California" => "Such a beautiful place."
}

puts "\nAlright, what state are you from?"
input = (gets.chomp)
print "\nAh, you're from #{input}. "

states.each do |state, opinion|
if input == state
  puts opinion
end
end

# Just wrapping it up
puts "\nSo to reiterate, you are #{name}, #{age}, from #{input}."
puts "\nAwesome, thanks so much. See you later #{name}."
