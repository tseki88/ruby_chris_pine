# Make an OrangeTree class. It should have a height method which returns its height, and a oneYearPasses method, which, when called, ages the tree one year. Each year the tree grows taller (however much you think an orange tree should grow in a year), and after some number of years (again, your call) the tree should die. For the first few years, it should not produce fruit, but after a while it should, and I guess that older trees produce more each year than younger trees... whatever you think makes most sense. And, of course, you should be able to countTheOranges (which returns the number of oranges on the tree), and pickAnOrange (which reduces the @orangeCount by one and returns a string telling you how delicious the orange was, or else it just tells you that there are no more oranges to pick this year). Make sure that any oranges you don't pick one year fall off before the next year. 


class OrangeTree

    def initialize
        @tree_age = 0
        @orange_qty = 0
        @tree_height = 0

        puts "the seed has been planted"
    end

    def year_passes
        @orange_qty = 0
        puts "Unpicked oranges fall off the tree."
        puts "One year passes.."
        
        @tree_age += 1

        if @tree_age > 30
            @orage_qty = rand(7) + 8
        elsif @tree_age > 20
            @tree_height += 10
            @orange_qty = rand(5) + 4
        elsif @tree_age < 10
            @tree_height += 50
        elsif @tree_age >= 35
            puts "the tree has reached the end of it's life, leaving you with a new seed."
            exit
        else
            @tree_height += 30
            @orange_qty = rand(4) + 1
        end
    end

    def count_oranges
        puts "There are #{@orange_qty} oranges on our orange tree."
    end

    def pick_orange
        if @orange_qty == 0
            puts "There are no more oranges to pick this year."
        else
            @orange_qty -= 1
            count_oranges
            puts "You pick an orange off the tree. Yum, how delicious!"
        end
    end

    def height
        puts "The tree is #{@tree_height.to_f / 100} meters tall!"
        puts "The tree is #{@tree_age} years old"
    end

end

tree = OrangeTree.new
tree.year_passes
tree.year_passes
tree.year_passes
tree.year_passes
tree.year_passes
tree.year_passes
tree.count_oranges
tree.height
tree.pick_orange
tree.year_passes
tree.year_passes
tree.year_passes
tree.year_passes
tree.year_passes
tree.year_passes
tree.count_oranges
tree.height
tree.pick_orange
tree.year_passes
tree.year_passes
tree.year_passes
tree.year_passes
tree.year_passes
tree.year_passes
tree.count_oranges
tree.height
tree.pick_orange
tree.year_passes
tree.year_passes
tree.year_passes
tree.year_passes
tree.year_passes
tree.year_passes
tree.count_oranges
tree.height
tree.pick_orange
tree.pick_orange
tree.pick_orange
tree.pick_orange
tree.pick_orange
