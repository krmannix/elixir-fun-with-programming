defmodule PatternMathing do

  @spec factorial(number) :: number
  def factorial(n) do

  end

  @spec pow(number, number) :: number
  def pow(x, n) do

  end

  @type operand :: atoms: :sum, :sub, :mul, :div
  @type expression :: %{required(operand) => [expression | number, expression | number]}
  @spec ast(expression) :: number
  def ast(exp) do

  end

end
