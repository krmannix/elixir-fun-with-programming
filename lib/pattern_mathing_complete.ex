defmodule PatternMathingComplete do

  @spec factorial(number) :: number
  def factorial(n), do: factorial2(n)

  defp factorial2(n, y \\ 1) do
    case n do
      0 -> y
      n -> factorial2(n - 1, y * n)
    end
  end

  @spec pow(number, number) :: number
  def pow(x, n) when is_integer(n), do: {:ok, pow2(x, n)}
  def pow(x, n), do: {:error, "Exponent #{n} is not an integer"}

  def pow!(x, n) do
    case pow(x, n) do
      {:ok, ans} -> ans
      {:error, error} -> raise ArgumentError, message: error
    end
  end

  defp pow2(x, n, y \\ 1)
  defp pow2(_x, 0, _y), do: 1
  defp pow2(x, 1, y), do: x * y
  defp pow2(x, n, y) when n < 0, do: pow2(1 / x, -n, y)
  defp pow2(x, n, y) when rem(n, 2) == 0, do: pow2(x * x, div(n, 2), y)
  defp pow2(x, n, y), do: pow2(x * x, div((n - 1), 2), x * y)

end
