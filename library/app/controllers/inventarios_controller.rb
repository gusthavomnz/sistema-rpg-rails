class InventariosController < ApplicationController
  before_action :set_inventario, only: %i[ show update destroy ]

  # GET /inventarios
  def index
    @inventarios = Inventario.all

    render json: @inventarios
  end

  # GET /inventarios/1
  def show
    render json: @inventario
  end

  # POST /inventarios
  def create
    @inventario = Inventario.new(inventario_params)

    if @inventario.save
      render json: @inventario, status: :created, location: @inventario
    else
      render json: @inventario.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /inventarios/1
  def update
    if @inventario.update(inventario_params)
      render json: @inventario
    else
      render json: @inventario.errors, status: :unprocessable_content
    end
  end

  # DELETE /inventarios/1
  def destroy
    @inventario.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventario
      @inventario = Inventario.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def inventario_params
      params.expect(inventario: [ :capacidade_maxima, :euro ])
    end
end
