class WorkInProgressLimitsController < ApplicationController
  before_action :set_work_in_progress_limit, only: %i[ show edit update destroy ]

  # GET /work_in_progress_limits
  def index
    @work_in_progress_limits = WorkInProgressLimit.all
  end

  # GET /work_in_progress_limits/1
  def show
  end

  # GET /work_in_progress_limits/new
  def new
    @work_in_progress_limit = WorkInProgressLimit.new
  end

  # GET /work_in_progress_limits/1/edit
  def edit
  end

  # POST /work_in_progress_limits
  def create
    @work_in_progress_limit = WorkInProgressLimit.new(work_in_progress_limit_params)

    if @work_in_progress_limit.save
      redirect_to @work_in_progress_limit, notice: "Work in progress limit was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /work_in_progress_limits/1
  def update
    if @work_in_progress_limit.update(work_in_progress_limit_params)
      redirect_to @work_in_progress_limit, notice: "Work in progress limit was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /work_in_progress_limits/1
  def destroy
    @work_in_progress_limit.destroy!
    redirect_to work_in_progress_limits_url, notice: "Work in progress limit was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_in_progress_limit
      @work_in_progress_limit = WorkInProgressLimit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def work_in_progress_limit_params
      params.require(:work_in_progress_limit).permit(:limit, :column_id)
    end
end
