class GuerreirosController < ApplicationController
  before_action :set_guerreiro, only: %i[ show update destroy ]

  # GET /guerreiros
  def index
    @guerreiros = Guerreiro.all

    render json: @guerreiros
  end

  # GET /guerreiros/1
  def show
    render json: @guerreiro
  end

  # POST /guerreiros
  def create
    @guerreiro = Guerreiro.new(guerreiro_params)

    if @guerreiro.save
      render json: @guerreiro, status: :created, location: @guerreiro
    else
      render json: @guerreiro.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /guerreiros/1
  def update
    if @guerreiro.update(guerreiro_params)
      render json: @guerreiro
    else
      render json: @guerreiro.errors, status: :unprocessable_content
    end
  end

  # DELETE /guerreiros/1
  def destroy
    @guerreiro.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guerreiro
      @guerreiro = Guerreiro.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def guerreiro_params
      params.expect(guerreiro: [ :id_personagem_id, :forca_base, :tipo_arma_preferida ])
    end
end
