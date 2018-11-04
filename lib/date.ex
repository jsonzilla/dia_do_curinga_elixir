defmodule DDC.MyDate do 
  def isLeapYearInt(date) do
    if  Date.leap_year?(date) do
      1 
    else 
      0 
    end
  end

  def countNumberOfDays(date) do
    case date.month do
    1  -> date.day
    2  -> date.day + 31
    3  -> date.day + 59 + isLeapYearInt(date)
    4  -> date.day + 90 + isLeapYearInt(date)
    5  -> date.day + 120 + isLeapYearInt(date)
    6  -> date.day + 151 + isLeapYearInt(date)
    7  -> date.day + 181 + isLeapYearInt(date)
    8  -> date.day + 212 + isLeapYearInt(date)
    9  -> date.day + 243 + isLeapYearInt(date)
    10 -> date.day + 273 + isLeapYearInt(date)
    11 -> date.day + 304 + isLeapYearInt(date)
    12 -> date.day + 334 + isLeapYearInt(date)
    end
  end

end