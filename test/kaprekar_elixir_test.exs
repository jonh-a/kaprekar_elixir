defmodule KaprekarElixirTest do
  use ExUnit.Case
  doctest KaprekarElixir

  test "greets the world" do
    assert KaprekarElixir.hello() == :world
  end
end
