defmodule AoC.Day02Test do
  use ExUnit.Case


  test "2x3x4 requires 53 sft of paper" do
    assert AoC.Day02.find_area("  2x3x4") == 58
  end

  test "1x1x10 requires 43 sft of paper" do
    assert AoC.Day02.find_area("1x1x10") == 43
  end

  test "array of dimensions finds the total area" do
    assert AoC.Day02.find_area(["1x1x10", "2x3x4"]) == 101
  end

  test "array of dimensions from file" do
    data = File.read!("./test/input/day02.txt") |> String.split("\n")
    x = AoC.Day02.find_area(data)
    assert x == 1586300
    IO.puts AoC.Day02.find_ribbon_length(data)
  end

  test "2x3x4 returns 24 as the ribbon length" do
     assert AoC.Day02.find_ribbon_length("  2x3x4") == 34
  end

  test "1x1x10 requires 24 ft of ribbon" do
    assert AoC.Day02.find_ribbon_length("1x1x10") == 14
  end



end
