class IphonesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_iphone, only: [:show, :edit, :update, :destroy]

  # GET /iphones
  # GET /iphones.json
  def index
    @iphones = Iphone.all
  end

  # GET /iphones/1
  # GET /iphones/1.json
  def show
  end

  # GET /iphones/new
  def new
    @iphone = Iphone.new
  end

  # GET /iphones/1/edit
  def edit
  end

  # POST /iphones
  # POST /iphones.json
  def create
    @iphone = Iphone.new(iphone_params)

    respond_to do |format|
      if @iphone.save
        format.html { redirect_to @iphone, notice: 'Iphone was successfully created.' }
        format.json { render action: 'show', status: :created, location: @iphone }
      else
        format.html { render action: 'new' }
        format.json { render json: @iphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iphones/1
  # PATCH/PUT /iphones/1.json
  def update
    respond_to do |format|
      if @iphone.update(iphone_params)
        format.html { redirect_to @iphone, notice: 'Iphone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @iphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iphones/1
  # DELETE /iphones/1.json
  def destroy
    @iphone.destroy
    respond_to do |format|
      format.html { redirect_to iphones_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iphone
      @iphone = Iphone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iphone_params
      params.require(:iphone).permit(:services, :imei, :response_email, :text_alert, :user_id)
    end
end
