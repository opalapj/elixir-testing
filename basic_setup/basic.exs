require Logger

ExUnit.start(
  trace: true,
  seed: 0
)

defmodule MyModuleTest do
  use ExUnit.Case

  describe "first group" do
    Logger.info([])

    setup :helper

    @tag :first_group_first_test
    test "first test", context do
      Logger.info(inspect(context, pretty: true))
      assert true
    end

    test "second test", context do
      Logger.info(inspect(context, pretty: true))
      assert true
    end

    defp helper(context), do: Logger.info(inspect(context, pretty: true))
  end

  describe "second group" do
    Logger.info([])

    test "first test", context do
      Logger.info(inspect(context, pretty: true))
      assert true
    end

    @tag my_tag: :second_group_second_test
    test "second test", context do
      Logger.info(inspect(context, pretty: true))
      assert true
    end
  end
end
