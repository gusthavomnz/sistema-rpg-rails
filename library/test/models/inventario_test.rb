require "test_helper"

class InventarioTest < ActiveSupport::TestCase
  test "has many items" do
    inventario = inventarios(:one)
    assert_respond_to inventario, :items
  end
end
