defmodule Assertion do
  defmacro __using__ do
    quote do
      import unquote(__MODULE__)
      Module.register_attribute(__MODULE__, :test, accumulate: true)
      @before_compile unquote(__MODULE__)
    end
  end

  defmacro __before_compile__(_env) do
    quote do
      def run, do: Assertion.Test.run(@tests, __MODULE__)
    end
  end
end
