require "test_helper"

class InventariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventario = inventarios(:one)
  end

  test "should get index" do
    get inventarios_url, as: :json
    assert_response :success
  end

  test "should create inventario" do
    assert_difference("Inventario.count") do
      post inventarios_url, params: { inventario: { capacidade_maxima: @inventario.capacidade_maxima, euro: @inventario.euro } }, as: :json
    end

    assert_response :created
  end

  test "should show inventario" do
    get inventario_url(@inventario), as: :json
    assert_response :success
  end

  test "should update inventario" do
    patch inventario_url(@inventario), params: { inventario: { capacidade_maxima: @inventario.capacidade_maxima, euro: @inventario.euro } }, as: :json
    assert_response :success
  end

  test "should destroy inventario" do
    assert_difference("Inventario.count", -1) do
      delete inventario_url(@inventario), as: :json
    end

    assert_response :no_content
  end
end
