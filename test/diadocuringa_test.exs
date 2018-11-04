defmodule DDC.FrodeCalendarTest do
  use ExUnit.Case
  doctest DDC.FrodeCalendar

  alias DDC.FrodeCalendar

  #compact

  test "Date 2017.7.18 should be compact 9C7P5P7P" do
    assert FrodeCalendar.compact(~D[2017-07-18]) == "9C7P5P7P"
  end

  test "Date 2017.7.19 should be compact frode 10C8P6P7P" do
    assert FrodeCalendar.compact(~D[2017-07-19]) == "10C8P6P7P"
  end

  test "Date 2011.2.27 should be compact frode QEKEKP1P" do
    assert FrodeCalendar.compact(~D[2011-02-27]) == "QEKEKP1P"
  end

  test "Date 2011.2.28 should be compact frode KE1O1P1P" do
    assert FrodeCalendar.compact(~D[2011-02-28]) == "KE1O1P1P"
  end

  test "Date 2011.3.1 should be compact frode 1O1O1P1P" do
    assert FrodeCalendar.compact(~D[2011-03-01]) == "1O1O1P1P"
  end

  test "Date 2012.2.27 should be compact frode QEKEKP2P" do
    assert FrodeCalendar.compact(~D[2012-02-27]) == "QEKEKP2P"
  end

  test "Date 2012.2.28 should be compact frode KE1O1P2P" do
    assert FrodeCalendar.compact(~D[2012-02-28]) == "KE1O1P2P"
  end

  test "Date 2012.2.29 should be compact frode Jo1O1P2P" do
    assert FrodeCalendar.compact(~D[2012-02-29]) == "Jo1O1P2P"
  end

  test "Date 2012.3.1 should be compact frode 1O1O1P2P" do
    assert FrodeCalendar.compact(~D[2012-03-01]) == "1O1O1P2P"
  end

  test "Date 2013.2.28 should be compact frode KE1O1P3P" do
    assert FrodeCalendar.compact(~D[2013-02-28]) == "KE1O1P3P"
  end

  test "Date 2013.3.1 should be compact frode 1O1O1P3P" do
    assert FrodeCalendar.compact(~D[2013-03-01]) == "1O1O1P3P"
  end

  test "Date 2014.2.28 should be compact frode KE1O1P4P" do
    assert FrodeCalendar.compact(~D[2014-02-28]) == "KE1O1P4P"
  end

  test "Date 2014.3.1 should be compact frode 1O1O1P4P" do
    assert FrodeCalendar.compact(~D[2014-03-01]) == "1O1O1P4P"
  end

  #cards

  test "Date 2017.7.18 should be cards 9C7P5P7P" do
    assert FrodeCalendar.cards(~D[2017-07-18]) == "🂹🃗🃕🃗"
  end

  test "Date 2017.7.19 should be cards frode 10C8P6P7P" do
    assert FrodeCalendar.cards(~D[2017-07-19]) == "🂺🃘🃖🃗"
  end

  test "Date 2011.2.27 should be cards frode QEKEKP1P" do
    assert FrodeCalendar.cards(~D[2011-02-27]) == "🂭🂮🃞🃑"
  end

  test "Date 2011.2.28 should be cards frode KE1O1P1P" do
    assert FrodeCalendar.cards(~D[2011-02-28]) == "🂮🃁🃑🃑"
  end

  test "Date 2011.3.1 should be cards frode 1O1O1P1P" do
    assert FrodeCalendar.cards(~D[2011-03-01]) == "🃁🃁🃑🃑"
  end

  test "Date 2012.2.27 should be cards frode QEKEKP2P" do
    assert FrodeCalendar.cards(~D[2012-02-27]) == "🂭🂮🃞🃒"
  end

  test "Date 2012.2.28 should be cards frode KE1O1P2P" do
    assert FrodeCalendar.cards(~D[2012-02-28]) == "🂮🃁🃑🃒"
  end

  test "Date 2012.2.29 should be cards frode Jo1O1P2P" do
    assert FrodeCalendar.cards(~D[2012-02-29]) == "🂿🃁🃑🃒"
  end

  test "Date 2012.3.1 should be cards frode 1O1O1P2P" do
    assert FrodeCalendar.cards(~D[2012-03-01]) == "🃁🃁🃑🃒"
  end

  test "Date 2013.2.28 should be cards frode KE1O1P3P" do
    assert FrodeCalendar.cards(~D[2013-02-28]) == "🂮🃁🃑🃓"
  end

  test "Date 2013.3.1 should be cards frode 1O1O1P3P" do
    assert FrodeCalendar.cards(~D[2013-03-01]) == "🃁🃁🃑🃓"
  end

  test "Date 2014.2.28 should be cards frode KE1O1P4P" do
    assert FrodeCalendar.cards(~D[2014-02-28]) == "🂮🃁🃑🃔"
  end

  test "Date 2014.3.1 should be cards frode 1O1O1P4P" do
    assert FrodeCalendar.cards(~D[2014-03-01]) == "🃁🃁🃑🃔"
  end
end

