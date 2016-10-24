defmodule AoC.Day01Test do
	use ExUnit.Case

	test "(()) and ()() both result in floor 0" do
		floor = AoC.Day01.find_floor("(())")
		assert floor == 0
		floor = AoC.Day01.find_floor("()()")
		assert floor == 0
	end

	test "((( and (()(()( both result in floor 3" do
		["))(((((", "(((", "(()(()( "]
		|> Enum.each(fn(str) -> 
			assert AoC.Day01.find_floor(str) == 3
		end)
	end

	test "()) and ))( both result in floor -1 (the first basement level)" do
		["())", "))("] 
		|> Enum.each(fn(str) -> 
			assert AoC.Day01.find_floor(str) == -1
		end)
	end

	test "))) and )())()) both result in floor -3" do
		[")))", ")())())"]
		|> Enum.each(fn(str) -> 
			assert AoC.Day01.find_floor(str) == -3
		end)
	end

	test ") causes him to enter the basement at character position 1" do
		assert AoC.Day01.find_basement_pos(")") == 1
	end

	test "()()) causes him to enter the basement at character position 5" do
		assert AoC.Day01.find_basement_pos("()())") == 5
	end

end
