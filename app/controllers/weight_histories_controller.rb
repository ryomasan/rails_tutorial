class WeightHistoriesController < ApplicationController
  before_action :set_weight_history, only: %i[ show edit update destroy ]

  # GET /weight_histories or /weight_histories.json
  def index
    @weight_histories = WeightHistory.all
  end

  # GET /weight_histories/1 or /weight_histories/1.json
  def show
  end

  # GET /weight_histories/new
  def new
    @weight_history = WeightHistory.new
  end

  # GET /weight_histories/1/edit
  def edit
  end

  # POST /weight_histories or /weight_histories.json
  def create
    @weight_history = WeightHistory.new(weight_history_params)
    logger.debug(@weight_history)
    respond_to do |format|
    # if @weight_history.save
    #   format.html { redirect_to @weight_history, notice: "Weight history was successfully created." }
    #   format.json { render :show, status: :created, location: @weight_history }
    # else
    #   format.html { render :new, status: :unprocessable_entity }
    #   format.json { render json: @weight_history.errors, status: :unprocessable_entity }
    # end
    if @weight_history.save
      # HTMLリクエストに対してリダイレクト
      format.html { redirect_to @weight_history, notice: "Weight history was successfully created." }
      # JSONリクエストに対してレスポンスを返す
      format.json {
        render json: {
          message: "Weight history was successfully created.",
          weight_history: @weight_history,
          location: weight_history_path(@weight_history)
        }, status: :created
      }
    else
      # 保存に失敗した場合
      format.html { render :new, status: :unprocessable_entity }
      # JSONリクエストに対してエラーレスポンスを返す
      format.json {
        render json: {
          message: "Failed to create weight history.",
          errors: @weight_history.errors.full_messages
        }, status: :unprocessable_entity
      }
    end
  end
  end

  # PATCH/PUT /weight_histories/1 or /weight_histories/1.json
  def update
    respond_to do |format|
      if @weight_history.update(weight_history_params)
        format.html { redirect_to @weight_history, notice: "Weight history was successfully updated." }
        format.json { render :show, status: :ok, location: @weight_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @weight_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_histories/1 or /weight_histories/1.json
  def destroy
    @weight_history.destroy!

    respond_to do |format|
      format.html { redirect_to weight_histories_path, status: :see_other, notice: "Weight history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_history
      @weight_history = WeightHistory.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def weight_history_params
      params.require(:weight_history).permit(:user_id, :weight, :memo)
      # params.expect(weight_history: [ :user_id, :weight, :memo ])
    end
end
