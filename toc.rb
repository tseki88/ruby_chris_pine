lineWidth = 40
title = "Table of Contents"
chapter = ["Chapter 1: Numbers", "Chapter 2: Letters", "Chapter 3: Variables"]
page = ["page 1", "page 72", "page 118"]

puts title.center lineWidth
puts chapter[0].ljust(lineWidth/2) + page[0].rjust(lineWidth/2)
puts chapter[1].ljust(lineWidth/2) + page[1].rjust(lineWidth/2)
puts chapter[2].ljust(lineWidth/2) + page[2].rjust(lineWidth/2)