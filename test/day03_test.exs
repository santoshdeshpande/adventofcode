defmodule AoC.Day03Test do
  use ExUnit.Case

  test "> should deliver to exactly 2 houses" do
    assert AoC.Day03.find_house_count(">") == 2
  end

  test "^>v< delivers presents to 4 houses" do
     assert AoC.Day03.find_house_count("^>v<") == 4
  end

  test "^v^v^v^v^v delivers to 2 houses" do
    assert AoC.Day03.find_house_count("^v^v^v^v^v") == 2
  end

  test "file input" do
    data = File.read!("./test/input/day03.txt") |> String.split("\n")
    [first | _rest] = data
    assert AoC.Day03.find_house_count(first) == 2592
  end
end
