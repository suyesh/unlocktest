class HtcsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_htc, only: [:show, :edit, :update, :destroy]

  # GET /htcs
  # GET /htcs.json
  def index
    @htcs = Htc.all
  end

  # GET /htcs/1
  # GET /htcs/1.json
  def show
  end

  # GET /htcs/new
  def new
    @htc = Htc.new
  end

  # GET /htcs/1/edit
  def edit
  end

  # POST /htcs
  # POST /htcs.json
  def create
    @htc = Htc.new(htc_params)

    respond_to do |format|
      if @htc.save
        format.html { redirect_to @htc, notice: 'Htc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @htc }
      else
        format.html { render action: 'new' }
        format.json { render json: @htc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /htcs/1
  # PATCH/PUT /htcs/1.json
  def update
    respond_to do |format|
      if @htc.update(htc_params)
        format.html { redirect_to @htc, notice: 'Htc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @htc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /htcs/1
  # DELETE /htcs/1.json
  def destroy
    @htc.destroy
    respond_to do |format|
      format.html { redirect_to htcs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_htc
      @htc = Htc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def htc_params
      params.require(:htc).permit(:services, :imei, :response_email, :text_alert, :user_id)
    end
end
