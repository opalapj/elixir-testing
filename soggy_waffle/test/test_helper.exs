# ---
# Excerpted from "Testing Elixir",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/lmelixir for more book information.
# ---
ExUnit.start(trace: true, seed: 0)

# if Enum.any?(
#      Application.started_applications(),
#      fn {app, _, _} -> app == :iex end
#    ) do
IEx.break!(SoggyWaffle.WeatherAPI.ResponseParser, :parse_response, 1)
# end
