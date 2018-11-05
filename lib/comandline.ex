defmodule Commandline.CLI do
  alias DDC.FrodeCalendar

  def main(_args) do
    Date.utc_today()
    |> FrodeCalendar.cards
    |> IO.puts
  end
end