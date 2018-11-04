defmodule DDC.MyDateTest do
  use ExUnit.Case
  doctest DDC.MyDate

  alias DDC.MyDate

 test "In date 2017.7.19 should be count 200 days" do
    assert MyDate.countNumberOfDays(~D[2017-07-19]) == 200
  end

  test "In date 2017.1.1 should be count 1 day" do
    assert MyDate.countNumberOfDays(~D[2017-01-01]) == 1
  end

  test "In date 2017.12.31 should be count 365 days" do
    assert MyDate.countNumberOfDays(~D[2017-12-31]) == 365
  end

  test "In date 2017.12.31 should not be count 366 days" do
     refute MyDate.countNumberOfDays(~D[2017-12-31]) == 366
  end
end

