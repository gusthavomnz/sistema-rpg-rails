class MissaosController < ApplicationController
  before_action :set_missao, only: %i[ show update destroy ]

  # GET /missaos
  def index
    @missaos = Missao.all

    render json: @missaos
  end

  # GET /missaos/1
  def show
    render json: @missao
  end

  # POST /missaos
  def create
    @missao = Missao.new(missao_params)

    if @missao.save
      render json: @missao, status: :created, location: @missao
    else
      render json: @missao.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /missaos/1
  def update
    if @missao.update(missao_params)
      render json: @missao
    else
      render json: @missao.errors, status: :unprocessable_content
    end
  end

  # DELETE /missaos/1
  def destroy
    @missao.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_missao
      @missao = Missao.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def missao_params
      params.expect(missao: [ :titulo, :descricao, :raridade, :recompensa_xp ])
    end
end
