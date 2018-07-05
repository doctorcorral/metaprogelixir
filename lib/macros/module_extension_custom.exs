defmodule Assertion do
  defmacro extend(options \\ []) do
    quote do
      import unquote(__MODULE__)

      def run do
        IO.puts("Corriendo tests bien chingones...")
      end
    end
  end
end

defmodule MathTest do
  require Assertion
  Assertion.extend()
end
