class MilitariesController < ApplicationController
  before_action :set_military, only: [:show, :update, :destroy]

  # GET /militaries
  def index
    @militaries = Military.all

    render json: @militaries
  end

  # GET /militaries/1
  def show
    render json: @military
  end

  # POST /militaries
  def create
    @military = Military.new(military_params)

    if @military.save
      render json: @military, status: :created, location: @military
    else
      render json: @military.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /militaries/1
  def update
    if @military.update(military_params)
      render json: @military
    else
      render json: @military.errors, status: :unprocessable_entity
    end
  end

  # DELETE /militaries/1
  def destroy
    @military.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_military
      @military = Military.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def military_params
      params.require(:military).permit(:person_id, :nickname, :military_code, :military_register, :rank_id)
    end
end
