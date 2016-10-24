defmodule AoC.Day02 do

  def find_area("") do
    0
  end

  def find_area(spec) when is_binary(spec) do
    String.trim(spec)
      |> String.split("x")
      |> Enum.map(&String.to_integer/1)
      |> Enum.sort
      |> find_actual_area
  end



  def find_area(list) when is_list(list) do
    list
      |> Enum.reduce(0, fn(x, acc) -> find_area(x)+acc end)
  end


  def find_ribbon_length("") do
    0
  end

  def find_ribbon_length(spec) when is_binary(spec) do
    String.trim(spec)
     |> String.split("x")
     |> Enum.map(&String.to_integer/1)
     |> Enum.sort
     |> find_length
  end

  def find_ribbon_length(list) when is_list(list) do
    list
      |> Enum.reduce(0, fn(x, acc) -> find_ribbon_length(x)+acc end)
  end

  defp find_length([l,w,h]) do
    2*(l+w) + (l*w*h)
  end

  defp find_actual_area([l,w,h]) do
    2*l*w+2*w*h+2*h*l + (l*w)
  end
end
