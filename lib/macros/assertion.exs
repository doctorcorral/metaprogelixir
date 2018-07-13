defmodule Assertion do
  defmacro __using__ do
    quote do
      import unquote(__MODULE__)
      Module.register_attribute(__MODULE__, :test, accumulate: true)
      @before_compile unquote(__MODULE__)
    end
  end
end
