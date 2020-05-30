defmodule LogTestTest do
  use ExUnit.Case
  doctest LogTest

  test "greets the world" do
    assert LogTest.hello() == :world
  end
end
