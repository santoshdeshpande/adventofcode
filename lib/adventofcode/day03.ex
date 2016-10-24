defmodule AoC.Day03 do

  def find_house_count(data) when is_binary(data)  do
    data
    |> String.split("")
    |> Enum.reduce([{0,0}], fn(x, acc) -> update_house_dir(acc, x) end)
    |> IO.inspect
    |> Enum.uniq
    |> Enum.count
  end

  def updater(list, dir) do
    update_house_dir(list, dir)
  end

  defp update_house_dir([{x,y} | _tail] = list, ">") do
    [{x+1,y} | list]
  end

  defp update_house_dir([{x,y} | _tail] = list, "^") do
    [{x,y+1} | list]
  end

  defp update_house_dir([{x,y} | _tail] = list, "<") do
    [{x-1,y} | list]
  end

  defp update_house_dir([{x,y} | _tail] = list, "v") do
    [{x,y-1} | list]
  end


  defp update_house_dir(list, "") do
    list
  end
end
