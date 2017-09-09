# elixir-fun-with-programming
elixir fun with programming #1

## Why Elixir?

* Functional language with a syntax similar to Ruby
* Dynamically typed
* Highly concurrent due to the process model - all code is executed in small, lightweight processes that are garbage collected independently. These do not share state other than through persisted data stores
* Runs on the Erlang BEAM VM, known for low-latency and reliability
  1. Hot code reloading
  1. Distributed - asynchronous message passing does not need to happen on the same machine, can be passed to any receiver on the same network (Actor model)
  1. Fault-tolerant - graceful error handling through supervisor model

## Features
* Pattern matching
* Ships with tools like [mix](https://hexdocs.pm/mix/Mix.html) and [IEx](https://hexdocs.pm/iex/IEx.html)
* Access to Erlang's ecosystem

## Misc
* [Hex](https://hexdocs.pm/elixir/Enum.html) documentation / package manager
* [Phoenix](http://phoenixframework.org/) framework

## Pattern Matching examples
1. [Factorial](https://en.wikipedia.org/wiki/Factorial)
  1. Topics:
    1. Pattern matching with recursion
1. [Exponentiation by Squaring](https://en.wikipedia.org/wiki/Exponentiation_by_squaring)
  1. Implemented by the [math library](https://github.com/folz/math/blob/master/lib/math.ex#L116)
  1. Topics:
    1. Optional arguments with defaults
    1. Unused values
    1. Guard classes (`rem`, `<`, `>`)
1. [Math Abstract Syntax Tree](https://en.wikipedia.org/wiki/Abstract_syntax_tree)
  1. Map Pattern Matching
  1. [Enum](https://hexdocs.pm/elixir/Enum.html) library
  1. `cond` case
