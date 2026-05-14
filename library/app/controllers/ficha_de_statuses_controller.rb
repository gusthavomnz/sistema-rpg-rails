class FichaDeStatusesController < ApplicationController
  before_action :set_ficha_de_status, only: %i[ show update destroy ]

  # GET /ficha_de_statuses
  def index
    @ficha_de_statuses = FichaDeStatus.all

    render json: @ficha_de_statuses
  end

  # GET /ficha_de_statuses/1
  def show
    render json: @ficha_de_status
  end

  # POST /ficha_de_statuses
  def create
    @ficha_de_status = FichaDeStatus.new(ficha_de_status_params)

    if @ficha_de_status.save
      render json: @ficha_de_status, status: :created, location: @ficha_de_status
    else
      render json: @ficha_de_status.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /ficha_de_statuses/1
  def update
    if @ficha_de_status.update(ficha_de_status_params)
      render json: @ficha_de_status
    else
      render json: @ficha_de_status.errors, status: :unprocessable_content
    end
  end

  # DELETE /ficha_de_statuses/1
  def destroy
    @ficha_de_status.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ficha_de_status
      @ficha_de_status = FichaDeStatus.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def ficha_de_status_params
      params.expect(ficha_de_status: [ :id_personagem_id, :vida, :mana, :forca, :defesa, :inteligencia ])
    end
end
