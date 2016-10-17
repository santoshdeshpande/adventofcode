defmodule AoC.Day01 do
	
	def find_floor(str) do
		String.split(str, "")
		|> Enum.reduce(0, fn(x,acc) ->  process(x) + acc end)
	end

	def find_basement_pos(str) do
		String.split(str, "")
		|> Enum.map_reduce(0, fn(x, acc) -> {process(x)+acc, process(x)+acc} end)
		|> find_basement
		|> Kernel.+(1)
	end


	defp process("("), do: 1
	defp process(")"), do: -1
	defp process(_), do: 0

	defp find_basement({positions, _}) do
		positions
		|> Enum.find_index(fn(x)  -> x == -1 end)
	end
end