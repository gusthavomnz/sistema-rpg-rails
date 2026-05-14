require "test_helper"

class FichaDeStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ficha_de_status = ficha_de_statuses(:one)
  end

  test "should get index" do
    get ficha_de_statuses_url, as: :json
    assert_response :success
  end

  test "should create ficha_de_status" do
    assert_difference("FichaDeStatus.count") do
      post ficha_de_statuses_url, params: { ficha_de_status: { defesa: @ficha_de_status.defesa, forca: @ficha_de_status.forca, id_personagem_id: @ficha_de_status.id_personagem_id, inteligencia: @ficha_de_status.inteligencia, mana: @ficha_de_status.mana, vida: @ficha_de_status.vida } }, as: :json
    end

    assert_response :created
  end

  test "should show ficha_de_status" do
    get ficha_de_status_url(@ficha_de_status), as: :json
    assert_response :success
  end

  test "should update ficha_de_status" do
    patch ficha_de_status_url(@ficha_de_status), params: { ficha_de_status: { defesa: @ficha_de_status.defesa, forca: @ficha_de_status.forca, id_personagem_id: @ficha_de_status.id_personagem_id, inteligencia: @ficha_de_status.inteligencia, mana: @ficha_de_status.mana, vida: @ficha_de_status.vida } }, as: :json
    assert_response :success
  end

  test "should destroy ficha_de_status" do
    assert_difference("FichaDeStatus.count", -1) do
      delete ficha_de_status_url(@ficha_de_status), as: :json
    end

    assert_response :no_content
  end
end
