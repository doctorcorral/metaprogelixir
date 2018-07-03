defmodule Debugger do
  defmacro log(expression) do
    if Application.get_env(:debugger, :log_level) == :debug do
      quote bind_quoted: [expression: expression] do
        IO.puts(String.duplicate("=", 40))
        IO.inspect(expression)
        IO.puts(String.duplicate("=", 40))
      end
    else
      expression
    end
  end
end
