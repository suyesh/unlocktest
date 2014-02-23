class SamsungsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_samsung, only: [:show, :edit, :update, :destroy]

  # GET /samsungs
  # GET /samsungs.json
  def index
    @samsungs = Samsung.all
  end

  # GET /samsungs/1
  # GET /samsungs/1.json
  def show
  end

  # GET /samsungs/new
  def new
    @samsung = Samsung.new
  end

  # GET /samsungs/1/edit
  def edit
  end

  # POST /samsungs
  # POST /samsungs.json
  def create
    @samsung = Samsung.new(samsung_params)

    respond_to do |format|
      if @samsung.save
        format.html { redirect_to @samsung, notice: 'Samsung was successfully created.' }
        format.json { render action: 'show', status: :created, location: @samsung }
      else
        format.html { render action: 'new' }
        format.json { render json: @samsung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /samsungs/1
  # PATCH/PUT /samsungs/1.json
  def update
    respond_to do |format|
      if @samsung.update(samsung_params)
        format.html { redirect_to @samsung, notice: 'Samsung was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @samsung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /samsungs/1
  # DELETE /samsungs/1.json
  def destroy
    @samsung.destroy
    respond_to do |format|
      format.html { redirect_to samsungs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_samsung
      @samsung = Samsung.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def samsung_params
      params.require(:samsung).permit(:services, :imei, :response_email, :text_alert, :user_id)
    end
end
