defmodule Elixir99bottles do
  @moduledoc false
  defmodule BottleNumber do
    defstruct number: 0
  end

  defmodule BottleHelper do
    def container(bottle_number = %BottleNumber{}) do
      case bottle_number.number do
        1 -> "bottle"
        _ -> "bottles"
      end
    end

    def succesor(bottle_number = %BottleNumber{}) do
      case bottle_number.number do
        0 -> %BottleNumber{number: 99}
        _ -> %BottleNumber{number: bottle_number.number - 1}
      end
    end

    def quantity(bottle_number = %BottleNumber{}) do
      case bottle_number.number do
        0 -> "no more"
        _ -> "#{bottle_number.number}"
      end
    end

    def pronoun(bottle_number = %BottleNumber{}) do
      case bottle_number.number do
        1 -> "it"
        _ -> "one"
      end
    end

    def action(bottle_number = %BottleNumber{}) do
      case bottle_number.number do
        0 -> "Go to the store and buy some more"
        _ -> "Take #{pronoun(bottle_number)} down and pass it around"
      end
    end
  end

  def verse(order) do
    order_struct = %BottleNumber{number: order}
    next_order_struct = BottleHelper.succesor(order_struct)

    "#{String.capitalize BottleHelper.quantity(order_struct)} #{BottleHelper.container(order_struct)} of beer on the wall, #{BottleHelper.quantity(order_struct)} #{BottleHelper.container(order_struct)} of beer.
#{BottleHelper.action(order_struct)}, #{BottleHelper.quantity(next_order_struct)} #{BottleHelper.container(next_order_struct)} of beer on the wall."
  end

  def verses(start, finish) do
    start..finish
      |> Enum.map(&Elixir99bottles.verse(&1))
      |> Enum.join("\n\n")
  end

  def song do
    verses(99, 0)
  end
end
