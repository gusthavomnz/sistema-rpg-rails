class PersonagemMissaosController < ApplicationController
  before_action :set_personagem_missao, only: %i[ show update destroy ]

  # GET /personagem_missaos
  def index
    @personagem_missaos = PersonagemMissao.all

    render json: @personagem_missaos
  end

  # GET /personagem_missaos/1
  def show
    render json: @personagem_missao
  end

  # POST /personagem_missaos
  def create
    @personagem_missao = PersonagemMissao.new(personagem_missao_params)

    if @personagem_missao.save
      render json: @personagem_missao, status: :created, location: @personagem_missao
    else
      render json: @personagem_missao.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /personagem_missaos/1
  def update
    if @personagem_missao.update(personagem_missao_params)
      render json: @personagem_missao
    else
      render json: @personagem_missao.errors, status: :unprocessable_content
    end
  end

  # DELETE /personagem_missaos/1
  def destroy
    @personagem_missao.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personagem_missao
      @personagem_missao = PersonagemMissao.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def personagem_missao_params
      params.expect(personagem_missao: [ :id_personagem_id, :id_missao_id ])
    end
end
