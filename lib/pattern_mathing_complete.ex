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
  def pow(_x, n), do: {:error, "Exponent #{n} is not an integer"}

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

  # Math AST
  @type operand :: :sum | :sub | :mul | :div
  @type value :: number
  @type expression :: %{required(operand) => [expression | value, expression | value]}
  @spec ast(expression) :: number
  def ast(%{ sum: a }), do: Enum.reduce(a, 0, fn (x, acc) -> ast(x) + acc end)
  def ast(%{ sub: [a, b] }), do: ast(a) - ast(b)
  def ast(%{ div: [a, b] }), do: ast(a) / ast(b)
  def ast(%{ mul: [a, b] }), do: ast(a) * ast(b)
  def ast(val), do: val

end
