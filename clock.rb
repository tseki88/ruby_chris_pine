# Grandfather Clock. Write a method which takes a block and calls it once for each hour that has passed today. That way, if I were to pass in the block do puts 'DONG!' end, it would chime (sort of) like a grandfather clock. Test your method out with a few different blocks (including the one I just gave you). Hint: You can use Time.now.hour to get the current hour. However, this returns a number between 0 and 23, so you will have to alter those numbers in order to get ordinary clock-face numbers (1 to 12). 

class Clock
    
    def runApp
        chime = Proc.new do
            puts "DONG! "
        end

        currentHour = Time.now.hour
        
        if currentHour.to_i > 12
            chimeHour = currentHour.to_i - 12
            x = 0
            while x.to_i < chimeHour.to_i
                chime.call
                x = x.to_i + 1
            end
        else
            chimeHour = currentHour
            while x.to_i < chimeHour.to_i
                chime.call
                x = x.to_i + 1
            end
        end
    end
end

clock = Clock.new
clock.runApp