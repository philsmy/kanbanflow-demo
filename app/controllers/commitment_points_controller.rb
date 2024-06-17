class CommitmentPointsController < ApplicationController
  before_action :set_commitment_point, only: %i[ show edit update destroy ]

  # GET /commitment_points
  def index
    @commitment_points = CommitmentPoint.all
  end

  # GET /commitment_points/1
  def show
  end

  # GET /commitment_points/new
  def new
    @commitment_point = CommitmentPoint.new
  end

  # GET /commitment_points/1/edit
  def edit
  end

  # POST /commitment_points
  def create
    @commitment_point = CommitmentPoint.new(commitment_point_params)

    if @commitment_point.save
      redirect_to @commitment_point, notice: "Commitment point was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /commitment_points/1
  def update
    if @commitment_point.update(commitment_point_params)
      redirect_to @commitment_point, notice: "Commitment point was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /commitment_points/1
  def destroy
    @commitment_point.destroy!
    redirect_to commitment_points_url, notice: "Commitment point was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commitment_point
      @commitment_point = CommitmentPoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commitment_point_params
      params.require(:commitment_point).permit(:name, :board_id)
    end
end
