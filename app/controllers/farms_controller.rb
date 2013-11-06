class FarmsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_farm, only: [:show, :edit, :update, :destroy]

  # GET /farms
  # GET /farms.json
  def index
    @farms = current_user.farms.all
  end

  # GET /farms/1
  # GET /farms/1.json
  def show
  end

  # GET /farms/new
  def new
    @farm = Farm.new
  end

  # GET /farms/1/edit
  def edit
  end

  # POST /farms
  # POST /farms.json
  def create
    @farm = current_user.farms.new(farm_params)

    respond_to do |format|
      if @farm.save
        format.html { redirect_to @farm, notice: 'Farm was successfully created.' }
        format.json { render action: 'show', status: :created, location: @farm }
      else
        format.html { render action: 'new' }
        format.json { render json: @farm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /farms/1
  # PATCH/PUT /farms/1.json
  def update
    respond_to do |format|
      if @farm.update(farm_params)
        format.html { redirect_to @farm, notice: 'Farm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @farm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farms/1
  # DELETE /farms/1.json
  def destroy
    @farm.destroy
    respond_to do |format|
      format.html { redirect_to farms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farm
      @farm = current_user.farms.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def farm_params
      params.require(:farm).permit(:name, :description, :user_id)
    end
end