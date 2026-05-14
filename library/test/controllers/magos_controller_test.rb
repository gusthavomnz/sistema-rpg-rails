require "test_helper"

class MagosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mago = magos(:one)
  end

  test "should get index" do
    get magos_url, as: :json
    assert_response :success
  end

  test "should create mago" do
    assert_difference("Mago.count") do
      post magos_url, params: { mago: { escola_magia: @mago.escola_magia, id_personagem_id: @mago.id_personagem_id, mana_base: @mago.mana_base } }, as: :json
    end

    assert_response :created
  end

  test "should show mago" do
    get mago_url(@mago), as: :json
    assert_response :success
  end

  test "should update mago" do
    patch mago_url(@mago), params: { mago: { escola_magia: @mago.escola_magia, id_personagem_id: @mago.id_personagem_id, mana_base: @mago.mana_base } }, as: :json
    assert_response :success
  end

  test "should destroy mago" do
    assert_difference("Mago.count", -1) do
      delete mago_url(@mago), as: :json
    end

    assert_response :no_content
  end
end
