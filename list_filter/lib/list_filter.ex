defmodule ListFilter do
  def call(list), do: filterOdd(list)

  defp filterOdd(list), do: Enum.count(convertInt(list), fn odd -> rem(odd, 2) != 0 end)

  defp convertInt([head | tail]) do
    Enum.flat_map([head | tail], fn string ->
      case Integer.parse(string) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
  end
end
