defmodule AoC.Day03 do

  def find_house_count(data) when is_binary(data)  do
    data
    |> String.split("")
    |> Enum.with_index
    |> Enum.reduce([{0,0}], fn(x, acc) -> update_house_dir(acc, x) end)
    |> Enum.uniq
    |> Enum.count
  end

  defp update_house_dir([{x,y} | _tail] = list, {">",_}) do
    [{x+1,y} | list]
  end

  defp update_house_dir([{x,y} | _tail] = list, {"^",_}) do
    [{x,y+1} | list]
  end

  defp update_house_dir([{x,y} | _tail] = list, {"<",_}) do
    [{x-1,y} | list]
  end

  defp update_house_dir([{x,y} | _tail] = list, {"v",_}) do
    [{x,y-1} | list]
  end


  defp update_house_dir(list, {"",_}) do
    list
  end
end
