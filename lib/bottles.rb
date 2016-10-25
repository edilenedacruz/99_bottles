class Bottles

  attr_reader :total

  # def initialize(total)
  #   @total = total
  # end

  def pass_around
    @total -= 1
  end

  def single_verse
    "#{@total} bottles of beer on the wall, #{@total} bottles of beer."
  end

  def sing_the_song(total)
    while total > -1
      if total == 0
        puts "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
      elsif total == 1
        puts "#{total} bottle of beer on the wall, #{total} bottle of beer."
        puts "Take one down and pass it around, no more bottles of beer on the wall."
      elsif total == 2
        puts "#{total} bottles of beer on the wall, #{total} bottles of beer."
        puts "Take one down and pass it around, #{total - 1} bottle of beer on the wall."
      else
        puts "#{total} bottles of beer on the wall, #{total} bottles of beer."
        puts "Take one down and pass it around, #{total - 1} bottles of beer on the wall."
      end
      total -= 1
    end
  end

end

bottles = Bottles.new
bottles.sing_the_song(99)
