require "test_helper"

class GuerreirosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guerreiro = guerreiros(:one)
  end

  test "should get index" do
    get guerreiros_url, as: :json
    assert_response :success
  end

  test "should create guerreiro" do
    assert_difference("Guerreiro.count") do
      post guerreiros_url, params: { guerreiro: { forca_base: @guerreiro.forca_base, id_personagem_id: @guerreiro.id_personagem_id, tipo_arma_preferida: @guerreiro.tipo_arma_preferida } }, as: :json
    end

    assert_response :created
  end

  test "should show guerreiro" do
    get guerreiro_url(@guerreiro), as: :json
    assert_response :success
  end

  test "should update guerreiro" do
    patch guerreiro_url(@guerreiro), params: { guerreiro: { forca_base: @guerreiro.forca_base, id_personagem_id: @guerreiro.id_personagem_id, tipo_arma_preferida: @guerreiro.tipo_arma_preferida } }, as: :json
    assert_response :success
  end

  test "should destroy guerreiro" do
    assert_difference("Guerreiro.count", -1) do
      delete guerreiro_url(@guerreiro), as: :json
    end

    assert_response :no_content
  end
end
