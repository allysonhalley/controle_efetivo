class RankTypesController < ApplicationController
  before_action :set_rank_type, only: [:show, :update, :destroy]

  # GET /rank_types
  def index
    @rank_types = RankType.all

    render json: @rank_types
  end

  # GET /rank_types/1
  def show
    render json: @rank_type
  end

  # POST /rank_types
  def create
    @rank_type = RankType.new(rank_type_params)

    if @rank_type.save
      render json: @rank_type, status: :created, location: @rank_type
    else
      render json: @rank_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rank_types/1
  def update
    if @rank_type.update(rank_type_params)
      render json: @rank_type
    else
      render json: @rank_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rank_types/1
  def destroy
    @rank_type.destroy
  end

  # DELETE /rank_types/drop
  def drop
    RankType.collection.drop
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rank_type
      @rank_type = RankType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rank_type_params
      params.require(:rank_type).permit(:name, :acronym, :type)
    end
end
