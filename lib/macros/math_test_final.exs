defmodule MathTest do
  use Assertion

  test "integers can be added and substracted" do
    assert 2 + 2 == 5
    assert 5 - 5 == 10
  end
end
