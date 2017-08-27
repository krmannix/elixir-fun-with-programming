* Introduction
  * Go through the README
  * Answer any questions about Elixir
  * Talk about my projects with Elixir
    * Made a small [NFL web scraper](https://github.com/krmannix/nfl_player_searchex)
    * Did a small data project with it
    * Interested in exploring as a step into functional programming

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
