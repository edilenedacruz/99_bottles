require 'minitest/autorun'
require 'minitest/pride'
require './lib/bottles'

class BottlesTest < Minitest::Test

  def test_if_class_exists
    bottles = Bottles.new
    assert_instance_of Bottles, Bottles.new
  end

  def test_it_starts_with_99_bottles
    bottles = Bottles.new
    assert_equal 99, bottles.total
  end

  def test_it_can_have_less_bottles
    bottles = Bottles.new
    assert_equal 98, bottles.pass_around
  end

  def test_it_can_sing_a_verse
    bottles = Bottles.new
    assert_equal "99 bottles of beer on the wall, 99 bottles of beer.", bottles.single_verse
  end

  # def sing_the_song
  #
  # end


end
