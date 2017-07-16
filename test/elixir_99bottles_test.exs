defmodule Elixir99bottlesTest do
  use ExUnit.Case
  doctest Elixir99bottles

  test "test_the_first_verse" do

    expected = "99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall."

    assert expected == Elixir99bottles.verse(99)
  end


  test "test_another_verse" do

 	expected = "89 bottles of beer on the wall, 89 bottles of beer.
Take one down and pass it around, 88 bottles of beer on the wall."

	assert expected == Elixir99bottles.verse(89)
  end

  test "test_verse_2" do

  	expected = "2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottles of beer on the wall."

	assert expected == Elixir99bottles.verse(2)
  end

  test "test_verse_1" do

  	expected = "1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall."

	assert expected == Elixir99bottles.verse(1)
  end

  test "test_verse_0" do
  	expected = "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."

	assert expected == Elixir99bottles.verse(0)
  end

  test "test_a_couple_verses" do
  	expected =
"99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.

98 bottles of beer on the wall, 98 bottles of beer.
Take one down and pass it around, 97 bottles of beer on the wall."
	assert expected == Elixir99bottles.verses(99, 98)
  end

end
