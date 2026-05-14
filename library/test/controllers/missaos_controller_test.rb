require "test_helper"

class MissaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @missao = missaos(:one)
  end

  test "should get index" do
    get missaos_url, as: :json
    assert_response :success
  end

  test "should create missao" do
    assert_difference("Missao.count") do
      post missaos_url, params: { missao: { descricao: @missao.descricao, raridade: @missao.raridade, recompensa_xp: @missao.recompensa_xp, titulo: @missao.titulo } }, as: :json
    end

    assert_response :created
  end

  test "should show missao" do
    get missao_url(@missao), as: :json
    assert_response :success
  end

  test "should update missao" do
    patch missao_url(@missao), params: { missao: { descricao: @missao.descricao, raridade: @missao.raridade, recompensa_xp: @missao.recompensa_xp, titulo: @missao.titulo } }, as: :json
    assert_response :success
  end

  test "should destroy missao" do
    assert_difference("Missao.count", -1) do
      delete missao_url(@missao), as: :json
    end

    assert_response :no_content
  end
end
