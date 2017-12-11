students = ["alex", "alexs", "frank", "nicholas", "petter", "ramiro", "ronald", "samuel", "timothy", "chris", "alexr", "donato", "ali", "enrique", "will", "jeffery", "jorge", "jon", "khristina", "macus"]

word = students.sample
right = "_" * word.length
total_chances = 5

wrongs = 0

while wrongs < 5 do
  puts "\n"
  puts "Guess which C21 student is this: "
  puts " \n"
  puts right
  guess = gets.chomp
  if word.include? guess
    puts "\n"
    puts "Yeah!"
    word.length.times do |c|
      if word[c] == guess
        right[c] = guess
        print right
        puts "\n"
      end
    end
  else
    wrongs += 1
    puts "Sorry! That name does not have #{guess} Try again!"
    puts "You have #{total_chances.to_i - wrongs.to_i}  left"
  end
  unless right.include? "_"
     break
end
end
