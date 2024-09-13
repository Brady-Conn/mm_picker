defmodule MmPicker.WinnersTest do
  use MmPicker.DataCase

  alias MmPicker.Winners

  describe "winning_numbers" do
    alias MmPicker.Winners.WinningNumbers

    import MmPicker.WinnersFixtures

    @invalid_attrs %{date: nil}

    test "list_winning_numbers/0 returns all winning_numbers" do
      winning_numbers = winning_numbers_fixture()
      assert Winners.list_winning_numbers() == [winning_numbers]
    end

    test "get_winning_numbers!/1 returns the winning_numbers with given id" do
      winning_numbers = winning_numbers_fixture()
      assert Winners.get_winning_numbers!(winning_numbers.id) == winning_numbers
    end

    test "create_winning_numbers/1 with valid data creates a winning_numbers" do
      valid_attrs = %{date: ~D[2024-09-12]}

      assert {:ok, %WinningNumbers{} = winning_numbers} = Winners.create_winning_numbers(valid_attrs)
      assert winning_numbers.date == ~D[2024-09-12]
    end

    test "create_winning_numbers/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Winners.create_winning_numbers(@invalid_attrs)
    end

    test "update_winning_numbers/2 with valid data updates the winning_numbers" do
      winning_numbers = winning_numbers_fixture()
      update_attrs = %{date: ~D[2024-09-13]}

      assert {:ok, %WinningNumbers{} = winning_numbers} = Winners.update_winning_numbers(winning_numbers, update_attrs)
      assert winning_numbers.date == ~D[2024-09-13]
    end

    test "update_winning_numbers/2 with invalid data returns error changeset" do
      winning_numbers = winning_numbers_fixture()
      assert {:error, %Ecto.Changeset{}} = Winners.update_winning_numbers(winning_numbers, @invalid_attrs)
      assert winning_numbers == Winners.get_winning_numbers!(winning_numbers.id)
    end

    test "delete_winning_numbers/1 deletes the winning_numbers" do
      winning_numbers = winning_numbers_fixture()
      assert {:ok, %WinningNumbers{}} = Winners.delete_winning_numbers(winning_numbers)
      assert_raise Ecto.NoResultsError, fn -> Winners.get_winning_numbers!(winning_numbers.id) end
    end

    test "change_winning_numbers/1 returns a winning_numbers changeset" do
      winning_numbers = winning_numbers_fixture()
      assert %Ecto.Changeset{} = Winners.change_winning_numbers(winning_numbers)
    end
  end
end
