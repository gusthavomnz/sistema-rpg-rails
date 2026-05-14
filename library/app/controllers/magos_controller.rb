class MagosController < ApplicationController
  before_action :set_mago, only: %i[ show update destroy ]

  # GET /magos
  def index
    @magos = Mago.all

    render json: @magos
  end

  # GET /magos/1
  def show
    render json: @mago
  end

  # POST /magos
  def create
    @mago = Mago.new(mago_params)

    if @mago.save
      render json: @mago, status: :created, location: @mago
    else
      render json: @mago.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /magos/1
  def update
    if @mago.update(mago_params)
      render json: @mago
    else
      render json: @mago.errors, status: :unprocessable_content
    end
  end

  # DELETE /magos/1
  def destroy
    @mago.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mago
      @mago = Mago.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def mago_params
      params.expect(mago: [ :id_personagem_id, :mana_base, :escola_magia ])
    end
end
