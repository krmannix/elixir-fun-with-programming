* Introduction
  * Go through the README
  * Answer any questions about Elixir
  * Talk about my projects with Elixir
    * Made a small [NFL web scraper](https://github.com/krmannix/nfl_player_searchex)
    * Did a small data project with it
    * Interested in exploring as a step into functional programming

* Factorial (Warm up!)
  * Cover base case (0, 1)
    * Start with if / else if / else
    * Talk that `if` is really a macro provided by the `Kernel` [module](https://hexdocs.pm/elixir/Kernel.html)
      * Function signature is like `if(condition, do: do_block, else: nil)`
      * Macros are a way to dynamically add code to Elixir applications, used for metaprogramming. Almost like an eval function in javascript?
    * `else if` is not a thing! So we can nest `if` inside the `else`
    * We should use a `case` statement, which is similar to a switch statement

* Pow
  * Create tests for base cases, n = 0, n = 1
  * Set pow2 to use a default of y (with `\\`)
    * Function heads - function declarations without a body to set default arguments
  * Cover even n
    * We need to use `rem` and `div` instead of `/` since `/` will return a float
    * Maybe show this in iex?
  * Cover odd n
  * Cover negative n
  * _Run mix tests <path/to/file>_
  * Add a test to be type safe against non-integers
    * Talk about the difference between return tuples and bang functions
    * Implement pow! with `ArgumentError`
    * Return an {:ok, val} tuple

* Math AST
  * Pattern matching in Maps - at argument level
  * Allows for cool things such as this basic Math AST
  * Show basic "trees"

1 + 9 = %{ sum: [1, 9] }
1 + 9 / 2 = %{ sum: [1, %{ div: [9, 2] }] }
1 * (8 / 4) + 9 / (2 - 4) =
%{
  sum: [
    %{
      mul: [
        1,
        %{ div: [8, 4] }
      ]
    },
    %{
      div: [
        9,
        %{ sub: [2, 4] }
      ]
    }
  ]
}
