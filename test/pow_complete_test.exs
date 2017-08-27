defmodule PowCompleteTest do
  use ExUnit.Case

  test "computes when n is 0" do
    assert PowComplete.pow(5, 0) == {:ok, 1}
  end

  test "computes when n is 1" do
    assert PowComplete.pow(5, 1) == {:ok, 5}
    assert PowComplete.pow(13, 1) == {:ok, 13}
  end

  test "computes when n > 1" do
    assert PowComplete.pow(2, 2) == {:ok, 4}
    assert PowComplete.pow(10, 3) == {:ok, 1000}
    assert PowComplete.pow(3, 7) == {:ok, 2187}
  end

  test "computes when n < 1" do
    assert PowComplete.pow(5, -1) == {:ok, 0.2}
    assert PowComplete.pow(2, -1) == {:ok, 0.5}
  end

  test "returns an error tuple when n is not an integer" do
    assert PowComplete.pow(4, 2.2) == {:error, "Exponent 2.2 is not an integer"}
  end

  test "error is raised for pow!" do
    assert_raise(ArgumentError, "Exponent 2.2 is not an integer", fn -> PowComplete.pow!(4, 2.2) end)
  end
end
