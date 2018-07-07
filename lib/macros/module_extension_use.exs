defmodule Assertion do
  defmacro __using__(_options) do
    quote do
      import unquote(__MODULE__)

      def run do
        IO.puts("Corriendo tests chingones..")
      end
    end
  end
end

defmodule MathTest do
  use Assertion
end
