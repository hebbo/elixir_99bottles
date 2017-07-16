defmodule Elixir99bottles do

	def verse(order) do

		case order do

			0 -> "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."

			1 -> "1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall."

			_ -> "#{order} bottles of beer on the wall, #{order} bottles of beer.
Take one down and pass it around, #{order-1} bottles of beer on the wall."

		end
	end

	def verses(start, finish) do
		verse_list = Enum.map(start..finish, &Elixir99bottles.verse(&1))
		Enum.join(verse_list, "\n\n")
	end
end
