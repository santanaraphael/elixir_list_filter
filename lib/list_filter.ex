defmodule ListFilter do
  require Integer

  def call(list) do
    Enum.filter(list, fn x -> is_digit?(x) end)
    |> Enum.map(fn x -> elem(Integer.parse(x), 0) end)
    |> Enum.filter(fn x -> Integer.is_odd(x) end)
    |> Enum.count()
  end

  defp is_digit?(string_value) do
    case Integer.parse(string_value) do
      {_value, ""} -> true
      _ -> false
    end
  end
end
