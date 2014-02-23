class BlackberriesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_blackberry, only: [:show, :edit, :update, :destroy]

  # GET /blackberries
  # GET /blackberries.json
  def index
    @blackberries = Blackberry.all
  end

  # GET /blackberries/1
  # GET /blackberries/1.json
  def show
  end

  # GET /blackberries/new
  def new
    @blackberry = Blackberry.new
  end

  # GET /blackberries/1/edit
  def edit
  end

  # POST /blackberries
  # POST /blackberries.json
  def create
    @blackberry = Blackberry.new(blackberry_params)

    respond_to do |format|
      if @blackberry.save
        format.html { redirect_to @blackberry, notice: 'Blackberry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @blackberry }
      else
        format.html { render action: 'new' }
        format.json { render json: @blackberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blackberries/1
  # PATCH/PUT /blackberries/1.json
  def update
    respond_to do |format|
      if @blackberry.update(blackberry_params)
        format.html { redirect_to @blackberry, notice: 'Blackberry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @blackberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blackberries/1
  # DELETE /blackberries/1.json
  def destroy
    @blackberry.destroy
    respond_to do |format|
      format.html { redirect_to blackberries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blackberry
      @blackberry = Blackberry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blackberry_params
      params.require(:blackberry).permit(:services, :imei, :response_email, :text_alert, :user_id)
    end
end
