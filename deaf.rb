response = ""
bye = 0
while bye < 3
    response = gets.chomp
    if response == "bye".upcase
        puts "..."
        bye = bye + 1
    elsif response != response.upcase
        puts "huh?! speak up, sonny!".upcase
    else
        puts "no, not since ".upcase + (rand(21).to_i + 1930).to_s
    end
end
puts "come visit me again soon sonny".upcase