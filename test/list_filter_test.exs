defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "filters out not integers and counts odd correctly" do
      input = ["raphael", "santana", "3", "5", "6"]

      response = ListFilter.call(input)

      expected_response = 2
      assert response == expected_response
    end

    test "filters out not integers" do
      input = ["raphael", "santana"]

      response = ListFilter.call(input)

      expected_response = 0
      assert response == expected_response
    end

    test "empty list" do
      input = []

      response = ListFilter.call(input)

      expected_response = 0
      assert response == expected_response
    end
  end
end
