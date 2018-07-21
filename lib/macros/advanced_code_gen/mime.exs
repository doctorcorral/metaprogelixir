defmodule Mime do
  for line <- File.stream!(Path.join([__DIR__, "mimes.txt"]), [], :line) do
    [type, rest] = line |> String.split("|t") |> Enum.map(&String.strip(&1))
    extensions(String.plit(rest, ~r/,\s?/))
    def exts_from_type(unquote(type)), do: unquote(extensions)
    def type_from_text(ext) when ext in unquote(extensions), do: unquote(type)
  end
end
