class HuwaeisController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_huwaei, only: [:show, :edit, :update, :destroy]

  # GET /huwaeis
  # GET /huwaeis.json
  def index
    @huwaeis = Huwaei.all
  end

  # GET /huwaeis/1
  # GET /huwaeis/1.json
  def show
  end

  # GET /huwaeis/new
  def new
    @huwaei = Huwaei.new
  end

  # GET /huwaeis/1/edit
  def edit
  end

  # POST /huwaeis
  # POST /huwaeis.json
  def create
    @huwaei = Huwaei.new(huwaei_params)

    respond_to do |format|
      if @huwaei.save
        format.html { redirect_to @huwaei, notice: 'Huwaei was successfully created.' }
        format.json { render action: 'show', status: :created, location: @huwaei }
      else
        format.html { render action: 'new' }
        format.json { render json: @huwaei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /huwaeis/1
  # PATCH/PUT /huwaeis/1.json
  def update
    respond_to do |format|
      if @huwaei.update(huwaei_params)
        format.html { redirect_to @huwaei, notice: 'Huwaei was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @huwaei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /huwaeis/1
  # DELETE /huwaeis/1.json
  def destroy
    @huwaei.destroy
    respond_to do |format|
      format.html { redirect_to huwaeis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_huwaei
      @huwaei = Huwaei.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def huwaei_params
      params.require(:huwaei).permit(:services, :imei, :response_email, :text_alert, :user_id)
    end
end
