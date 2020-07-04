defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck deck is no empty" do
    assert length(Cards.create_deck) > 1
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    refute deck == Cards.shuffle(deck)
  end
end
