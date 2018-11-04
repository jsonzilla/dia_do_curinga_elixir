defmodule DDC.FrodeCalendar do
  alias DDC.MyDate
  alias DDC.Card

  defp fixYear(y) do
    if y < 1790 do 
      1790 - y 
    else 
      y - 1790 
    end
  end

  defp fixDay(dayCounter, date) do
    leap = MyDate.isLeapYearInt(date)
    if dayCounter > (60 - leap) do
      dayCounter - 60
    else 
      dayCounter + 305
    end
  end
  
  def convertDayCounter(date) do
    MyDate.countNumberOfDays(date) |>fixDay(date)
  end

  defp suitMonthCard(date) do 
    leap = MyDate.isLeapYearInt(Date.add(date, -364))
    day = date.day
    cond do
      day <= (62 - leap) -> 1
      day <= (154 - leap) -> 2
      day <= (247 - leap) -> 3
      day <= (338 - leap) -> 0
      day <= (367 - leap) -> 1
      true -> 1
    end
  end

  defp cardNumberMonthCard(counter) do
    Integer.mod(Integer.floor_div(counter, 28), 13)
  end

  def monthCard(date) do
    case convertDayCounter(date) do 
      counter -> %Card{ card: cardNumberMonthCard(counter), suit: suitMonthCard(date) }
    end
  end

  defp suitWeekCard(counter) do 
    Integer.mod(Integer.floor_div(Integer.floor_div(counter, 7), 13), 4)
  end

  defp cardWeekDayCard(counter) do
    Integer.mod(Integer.floor_div(counter, 7), 13)
  end

  defp weekCard(date) do
    counter = convertDayCounter(date)
    %Card{ card: cardWeekDayCard(counter), suit: suitWeekCard(counter) }
  end

  defp suitDayCard(counter) do 
    Integer.mod(Integer.floor_div((counter - 1),13), 4)
  end

  defp cardNumberDayCard(counter) do
    Integer.mod((counter - 1), 13)
  end

  defp dayCard(date) do
    case convertDayCounter(date) do 
      0 -> %Card{ card: 13, suit: 4 }
      counter -> %Card{ card: cardNumberDayCard(counter), suit: suitDayCard(counter) }
    end
  end

  defp suitYearCard(date) do 
    Integer.mod(Integer.floor_div(fixYear(date.year), 13), 4)
  end

  defp cardNumberYearCard(date) do
    Integer.mod(fixYear(date.year), 13)
  end

  defp yearCard(date) do
    %Card{ card: cardNumberYearCard(date), suit: suitYearCard(date) }
  end

  def compact(date) do
    Card.stringfy(dayCard(date)) <> 
    Card.stringfy(weekCard(date)) <> 
    Card.stringfy(monthCard(date)) <> 
    Card.stringfy(yearCard(date)) 
  end

  def cards(date) do
    Card.cardfy(dayCard(date)) <>
    Card.cardfy(weekCard(date)) <> 
    Card.cardfy(monthCard(date)) <>
    Card.cardfy(yearCard(date)) 
  end
end
