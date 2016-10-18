defmodule AoC.Day02 do

  def find_area("") do
    0
  end

  def find_area(spec) when is_binary(spec) do
    [l,w,h] = String.trim(spec)
                |> String.split("x")
                |> Enum.map(&String.to_integer/1)
    list = [l*w, w*h, h*l]
    min = Enum.min list
    area = Enum.reduce(list, 0, fn(x,acc) -> 2*x + acc end)
    total_area = area + min
    total_area
  end


  def find_area(list) when is_list(list) do
    list
      |> Enum.reduce(0, fn(x, acc) -> find_area(x)+acc end)
  end


  def find_ribbon_length("") do
    0
  end

  def find_ribbon_length(spec) when is_binary(spec) do
    [l,w,h] = String.trim(spec)
                |> String.split("x")
                |> Enum.map(&String.to_integer/1)
    perimeters = [2*(l+w), 2*(w+h), 2*(h+l)]
    min_perim = Enum.min(perimeters) + (l*w*h)
  end

  def find_ribbon_length(list) when is_list(list) do
    list
      |> Enum.reduce(0, fn(x, acc) -> find_ribbon_length(x)+acc end)
  end

end
