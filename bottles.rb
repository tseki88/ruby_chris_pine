puts "how many bottles?"
bottles = gets.chomp

def englishNumber number
    if number < 0
        return "Please enter a number that isn't negative."
    end
    if number == 0
        return "zero"
    end

    numString = ""

    onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tensPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    
    left = number
    
    write = left/1000000
    left = left - write*1000000

    if write > 0
        millions = englishNumber write
        numString = numString + millions + " million"

        if left > 0
            numString = numString + " "
        end
    end
    
    write = left/1000
    left = left - write*1000

    if write > 0
        thousands = englishNumber write
        numString = numString + thousands + " thousand"

        if left > 0
            numString = numString + " "
        end
    end

    write = left/100
    left = left - write*100

    if write > 0
        hundreds = englishNumber write
        numString = numString + hundreds + " hundred"

        if left > 0
            numString = numString + " "
        end
    end

    write = left/10
    left = left - write*10

    if write > 0
        if ((write == 1) and (left > 0))
            numString = numString + teenagers[left-1]
            left = 0
        else
            numString = numString + tensPlace[write-1]
        end
        
        if left > 0
            numString = numString + "-"
        end
    end

    write = left
    left = 0
    if write > 0
        numString = numString + onesPlace[write-1]
    end

    numString
end

while bottles.to_i > 0
    puts englishNumber(bottles.to_i) + " bottles of beer on the wall, " + englishNumber(bottles.to_i) + " bottles of beer, knock one down, turn around, " + englishNumber(bottles.to_i - 1) + " bottles of beer left on the wall."
    bottles = (bottles.to_i - 1).to_s
end