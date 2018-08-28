gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative '../lib/bottles'

class BottlesTest < Minitest::Test
  def test_the_first_verse
    expected = <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
VERSE
    assert_equal expected, ::Bottles.new.verse(99)
  end

#   def test_another_verse
#     skip
#     expected = <<-VERSE
# 89 bottles of beer on the wall, 89 bottles of beer.
# Take one down and pass it around, 88 bottles of beer on the wall.
# VERSE
#     assert_equal expected, ::Bottles.new.verse(89)
#   end

#   def test_verse_2
#     skip
#     expected = <<-VERSE
# 2 bottles of beer on the wall, 2 bottles of beer.
# Take one down and pass it around, 1 bottle of beer on the wall.
#     VERSE
#     assert_equal expected, ::Bottles.new.verse(2)
#   end

#   def test_verse_1
#     skip
#     expected = <<-VERSE
# 1 bottle of beer on the wall, 1 bottle of beer.
# Take it down and pass it around, no more bottles of beer on the wall.
#     VERSE
#     assert_equal expected, ::Bottles.new.verse(1)
#   end

#   def test_verse_0
#     skip
#     expected = <<-VERSE
# No more bottles of beer on the wall, no more bottles of beer.
# Go to the store and buy some more, 99 bottles of beer on the wall.
#     VERSE
#     assert_equal expected, ::Bottles.new.verse(0)
#   end
end
