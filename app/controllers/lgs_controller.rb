class LgsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_lg, only: [:show, :edit, :update, :destroy]

  # GET /lgs
  # GET /lgs.json
  def index
    @lgs = Lg.all
  end

  # GET /lgs/1
  # GET /lgs/1.json
  def show
  end

  # GET /lgs/new
  def new
    @lg = Lg.new
  end

  # GET /lgs/1/edit
  def edit
  end

  # POST /lgs
  # POST /lgs.json
  def create
    @lg = Lg.new(lg_params)

    respond_to do |format|
      if @lg.save
        format.html { redirect_to @lg, notice: 'Lg was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lg }
      else
        format.html { render action: 'new' }
        format.json { render json: @lg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lgs/1
  # PATCH/PUT /lgs/1.json
  def update
    respond_to do |format|
      if @lg.update(lg_params)
        format.html { redirect_to @lg, notice: 'Lg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lgs/1
  # DELETE /lgs/1.json
  def destroy
    @lg.destroy
    respond_to do |format|
      format.html { redirect_to lgs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lg
      @lg = Lg.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lg_params
      params.require(:lg).permit(:services, :imei, :response_email, :text_alert, :user_id)
    end
end
