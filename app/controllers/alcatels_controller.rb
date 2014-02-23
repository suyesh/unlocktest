class AlcatelsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_alcatel, only: [:show, :edit, :update, :destroy]

  # GET /alcatels
  # GET /alcatels.json
  def index
    @alcatels = Alcatel.all
  end

  # GET /alcatels/1
  # GET /alcatels/1.json
  def show
  end

  # GET /alcatels/new
  def new
    @alcatel = Alcatel.new
  end

  # GET /alcatels/1/edit
  def edit
  end

  # POST /alcatels
  # POST /alcatels.json
  def create
    @alcatel = Alcatel.new(alcatel_params)

    respond_to do |format|
      if @alcatel.save
        format.html { redirect_to @alcatel, notice: 'Alcatel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @alcatel }
      else
        format.html { render action: 'new' }
        format.json { render json: @alcatel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alcatels/1
  # PATCH/PUT /alcatels/1.json
  def update
    respond_to do |format|
      if @alcatel.update(alcatel_params)
        format.html { redirect_to @alcatel, notice: 'Alcatel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @alcatel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alcatels/1
  # DELETE /alcatels/1.json
  def destroy
    @alcatel.destroy
    respond_to do |format|
      format.html { redirect_to alcatels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alcatel
      @alcatel = Alcatel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alcatel_params
      params.require(:alcatel).permit(:services, :imei, :response_email, :text_alert, :user_id)
    end
end
