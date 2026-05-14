require "test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url, as: :json
    assert_response :success
  end

  test "should create item" do
    assert_difference("Item.count") do
      post items_url, params: { item: { id_inventario_id: @item.id_inventario_id, nome: @item.nome, peso: @item.peso, raridade: @item.raridade, tipo: @item.tipo } }, as: :json
    end

    assert_response :created
  end

  test "should show item" do
    get item_url(@item), as: :json
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { id_inventario_id: @item.id_inventario_id, nome: @item.nome, peso: @item.peso, raridade: @item.raridade, tipo: @item.tipo } }, as: :json
    assert_response :success
  end

  test "should destroy item" do
    assert_difference("Item.count", -1) do
      delete item_url(@item), as: :json
    end

    assert_response :no_content
  end
end
