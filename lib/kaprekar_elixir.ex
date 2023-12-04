defmodule KaprekarElixir do
  @moduledoc """
  Kaprekar's constant in Elixir.
  """

  @kaprekars_constant 6174

  @spec prove(integer, integer) :: integer
  @doc """
  Proves Kaprekar's constant, given a number.
  Returns number of iterations required to reach 6174.

  ## Examples

      iex> KaprekarElixir.prove(1872)
      Testing number: 1872
      8721 - 1278 = 7443
      Testing number: 7443
      7443 - 3447 = 3996
      Testing number: 3996
      9963 - 3699 = 6264
      Testing number: 6264
      6642 - 2466 = 4176
      Testing number: 4176
      7641 - 1467 = 6174
      5

  """
  def prove(number, iterations \\ 0)

  def prove(@kaprekars_constant, iterarions), do: iterarions

  def prove(number, iterarions) do
    number
    |> tap(&IO.puts("Testing number: #{&1}"))
    |> Integer.to_string()
    |> String.pad_leading(4, "0")
    |> to_integer_list()
    |> difference()
    |> prove(iterarions + 1)
  end

  defp to_integer_list(string) do
    string
    |> String.codepoints()
    |> Enum.map(&String.to_integer/1)
  end

  defp descend(number_list) do
    number_list
    |> Enum.sort(&(&1 >= &2))
    |> Enum.join()
    |> String.to_integer()
  end

  defp ascend(number_list) do
    number_list
    |> Enum.sort()
    |> Enum.join()
    |> String.to_integer()
  end

  defp difference(number_list) do
    number_list
    |> descend()
    |> Kernel.-(ascend(number_list))
    |> tap(&IO.puts("#{descend(number_list)} - #{ascend(number_list)} = #{&1}"))
  end
end
