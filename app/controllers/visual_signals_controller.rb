class VisualSignalsController < ApplicationController
  before_action :set_visual_signal, only: %i[ show edit update destroy ]

  # GET /visual_signals
  def index
    @visual_signals = VisualSignal.all
  end

  # GET /visual_signals/1
  def show
  end

  # GET /visual_signals/new
  def new
    @visual_signal = VisualSignal.new
  end

  # GET /visual_signals/1/edit
  def edit
  end

  # POST /visual_signals
  def create
    @column = Column.find(params[:column_id])
    @visual_signal = @column.visual_signals.new(visual_signal_params)

    if @visual_signal.save
      respond_to do |format|
        format.html { redirect_to @column.board, notice: "Visual signal was successfully created.", status: :see_other }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /visual_signals/1
  def update
    if @visual_signal.update(visual_signal_params)
      redirect_to @visual_signal.column.board, notice: "Visual signal was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /visual_signals/1
  def destroy
    @visual_signal.destroy!
    redirect_to visual_signals_url, notice: "Visual signal was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visual_signal
      @visual_signal = VisualSignal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visual_signal_params
      params.require(:visual_signal).permit(:title, :description, :column_id)
    end
end
