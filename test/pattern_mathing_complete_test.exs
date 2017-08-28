defmodule PatternMathingCompleteTest do
  use ExUnit.Case

  test "factorial" do
    assert PatternMathingComplete.factorial(0) == 1
    assert PatternMathingComplete.factorial(1) == 1
    assert PatternMathingComplete.factorial(3) == 6
    assert PatternMathingComplete.factorial(5) == 120
  end

  test "pow" do
    assert PatternMathingComplete.pow(5, 0) == {:ok, 1}

    assert PatternMathingComplete.pow(5, 1) == {:ok, 5}
    assert PatternMathingComplete.pow(13, 1) == {:ok, 13}

    assert PatternMathingComplete.pow(2, 2) == {:ok, 4}
    assert PatternMathingComplete.pow(10, 3) == {:ok, 1000}
    assert PatternMathingComplete.pow(3, 7) == {:ok, 2187}

    assert PatternMathingComplete.pow(5, -1) == {:ok, 0.2}
    assert PatternMathingComplete.pow(2, -1) == {:ok, 0.5}

    assert PatternMathingComplete.pow(4, 2.2) == {:error, "Exponent 2.2 is not an integer"}
  end

  test "pow!" do
    assert_raise(ArgumentError, "Exponent 2.2 is not an integer", fn -> PatternMathingComplete.pow!(4, 2.2) end)
  end

end
