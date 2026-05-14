require "test_helper"

class PersonagemMissaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personagem_missao = personagem_missaos(:one)
  end

  test "should get index" do
    get personagem_missaos_url, as: :json
    assert_response :success
  end

  test "should create personagem_missao" do
    assert_difference("PersonagemMissao.count") do
      post personagem_missaos_url, params: { personagem_missao: { id_missao_id: @personagem_missao.id_missao_id, id_personagem_id: @personagem_missao.id_personagem_id } }, as: :json
    end

    assert_response :created
  end

  test "should show personagem_missao" do
    get personagem_missao_url(@personagem_missao), as: :json
    assert_response :success
  end

  test "should update personagem_missao" do
    patch personagem_missao_url(@personagem_missao), params: { personagem_missao: { id_missao_id: @personagem_missao.id_missao_id, id_personagem_id: @personagem_missao.id_personagem_id } }, as: :json
    assert_response :success
  end

  test "should destroy personagem_missao" do
    assert_difference("PersonagemMissao.count", -1) do
      delete personagem_missao_url(@personagem_missao), as: :json
    end

    assert_response :no_content
  end
end
