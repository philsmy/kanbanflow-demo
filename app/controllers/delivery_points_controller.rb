class DeliveryPointsController < ApplicationController
  before_action :set_delivery_point, only: %i[ show edit update destroy ]

  # GET /delivery_points
  def index
    @delivery_points = DeliveryPoint.all
  end

  # GET /delivery_points/1
  def show
  end

  # GET /delivery_points/new
  def new
    @delivery_point = DeliveryPoint.new
  end

  # GET /delivery_points/1/edit
  def edit
  end

  # POST /delivery_points
  def create
    @delivery_point = DeliveryPoint.new(delivery_point_params)

    if @delivery_point.save
      redirect_to @delivery_point, notice: "Delivery point was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /delivery_points/1
  def update
    if @delivery_point.update(delivery_point_params)
      redirect_to @delivery_point, notice: "Delivery point was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /delivery_points/1
  def destroy
    @delivery_point.destroy!
    redirect_to delivery_points_url, notice: "Delivery point was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_point
      @delivery_point = DeliveryPoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def delivery_point_params
      params.require(:delivery_point).permit(:name, :board_id)
    end
end
