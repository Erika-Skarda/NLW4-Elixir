defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "When there is a file with the given name, returns the sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 55}}

      assert response == expected_response
    end

    test "When there is no file with the given name, returns an error" do
      response = Numbers.sum_from_file("wrong_file")

      expected_response = {:error, %{message: "Invalid file!"}}

      assert response == expected_response
    end
  end

end
