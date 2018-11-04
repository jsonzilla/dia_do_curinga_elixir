  defmodule DDC.CardNumber do
  def stringfy(card) when is_integer(card) do 
    case card do
    10 -> "J"
    11 -> "Q"
    12 -> "K"
    13 -> "Jo"
    any -> Integer.to_string(any + 1)
    end
  end
end

defmodule DDC.Suit do
  def stringfy(suit) when is_integer(suit) do
    case suit do
      0 -> "O"
      1 -> "P"
      2 -> "C"
      3 -> "E"
      _ -> ""
    end
  end
end

defmodule DDC.PlayCard do
  defp cardNumber(card) do 
    cond do
    card < 11 -> card + 1
    true -> card + 2
    end
  end

  defp buildCard(cardString, suit) do 
    case suit do
      0 -> "1F0C#{cardString}"
      1 -> "1F0D#{cardString}"
      2 -> "1F0B#{cardString}"
      3 -> "1F0A#{cardString}"
      _ -> "" 
    end
  end

  defp toUtf8(cardString) do
    <<cardString::utf8>>
  end

  defp card(card, suit) do
    b = cardNumber(card) 
    |> Integer.to_string(16)
    |> buildCard(suit)
    |> String.to_integer(16)
    |> toUtf8
  end
  
  def cardfy(card, suit) when is_integer(suit) and is_integer(card) do
    if card >= 13 do
      "🂿" 
    else 
      card(card, suit)
    end
  end
end

defmodule DDC.Card do
  alias DDC.CardNumber  
  alias DDC.Suit
  alias DDC.PlayCard

  defstruct card: 1, suit: 1

  def stringfy(c) do
    CardNumber.stringfy(c.card) <> Suit.stringfy(c.suit)
  end

  def cardfy(c) do
    PlayCard.cardfy(c.card, c.suit)
  end
end