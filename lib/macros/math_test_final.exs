defmodule MathTest do
  use Assertion

  test "los enteros se pueden restar" do
    assert 2 + 2 == 5
    assert 5 - 5 == 10
  end

  test "los enteros se pueden dividir" do
    assert 5 * 5 == 25
    assert 10 / 2 == 5
  end
end
