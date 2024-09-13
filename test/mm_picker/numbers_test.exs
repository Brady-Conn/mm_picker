defmodule MmPicker.NumbersTest do
  use MmPicker.DataCase

  alias MmPicker.Numbers

  describe "number_regular" do
    alias MmPicker.Numbers.Regular

    import MmPicker.NumbersFixtures

    @invalid_attrs %{number: nil}

    test "list_number_regular/0 returns all number_regular" do
      regular = regular_fixture()
      assert Numbers.list_number_regular() == [regular]
    end

    test "get_regular!/1 returns the regular with given id" do
      regular = regular_fixture()
      assert Numbers.get_regular!(regular.id) == regular
    end

    test "create_regular/1 with valid data creates a regular" do
      valid_attrs = %{number: 42}

      assert {:ok, %Regular{} = regular} = Numbers.create_regular(valid_attrs)
      assert regular.number == 42
    end

    test "create_regular/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Numbers.create_regular(@invalid_attrs)
    end

    test "update_regular/2 with valid data updates the regular" do
      regular = regular_fixture()
      update_attrs = %{number: 43}

      assert {:ok, %Regular{} = regular} = Numbers.update_regular(regular, update_attrs)
      assert regular.number == 43
    end

    test "update_regular/2 with invalid data returns error changeset" do
      regular = regular_fixture()
      assert {:error, %Ecto.Changeset{}} = Numbers.update_regular(regular, @invalid_attrs)
      assert regular == Numbers.get_regular!(regular.id)
    end

    test "delete_regular/1 deletes the regular" do
      regular = regular_fixture()
      assert {:ok, %Regular{}} = Numbers.delete_regular(regular)
      assert_raise Ecto.NoResultsError, fn -> Numbers.get_regular!(regular.id) end
    end

    test "change_regular/1 returns a regular changeset" do
      regular = regular_fixture()
      assert %Ecto.Changeset{} = Numbers.change_regular(regular)
    end
  end

  describe "number_mega" do
    alias MmPicker.Numbers.Mega

    import MmPicker.NumbersFixtures

    @invalid_attrs %{number: nil}

    test "list_number_mega/0 returns all number_mega" do
      mega = mega_fixture()
      assert Numbers.list_number_mega() == [mega]
    end

    test "get_mega!/1 returns the mega with given id" do
      mega = mega_fixture()
      assert Numbers.get_mega!(mega.id) == mega
    end

    test "create_mega/1 with valid data creates a mega" do
      valid_attrs = %{number: 42}

      assert {:ok, %Mega{} = mega} = Numbers.create_mega(valid_attrs)
      assert mega.number == 42
    end

    test "create_mega/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Numbers.create_mega(@invalid_attrs)
    end

    test "update_mega/2 with valid data updates the mega" do
      mega = mega_fixture()
      update_attrs = %{number: 43}

      assert {:ok, %Mega{} = mega} = Numbers.update_mega(mega, update_attrs)
      assert mega.number == 43
    end

    test "update_mega/2 with invalid data returns error changeset" do
      mega = mega_fixture()
      assert {:error, %Ecto.Changeset{}} = Numbers.update_mega(mega, @invalid_attrs)
      assert mega == Numbers.get_mega!(mega.id)
    end

    test "delete_mega/1 deletes the mega" do
      mega = mega_fixture()
      assert {:ok, %Mega{}} = Numbers.delete_mega(mega)
      assert_raise Ecto.NoResultsError, fn -> Numbers.get_mega!(mega.id) end
    end

    test "change_mega/1 returns a mega changeset" do
      mega = mega_fixture()
      assert %Ecto.Changeset{} = Numbers.change_mega(mega)
    end
  end
end
