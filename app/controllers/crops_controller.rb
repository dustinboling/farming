class CropsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_farm, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :set_crop, only: [:show, :edit, :update, :destroy]

  # GET /crops
  # GET /crops.json
  def index
    @crops = @farm.crops.all
  end

  # GET /crops/1
  # GET /crops/1.json
  def show
  end

  # GET /crops/new
  def new
    @crop = @farm.crops.new
  end

  # GET /crops/1/edit
  def edit
  end

  # POST /crops
  # POST /crops.json
  def create
    @crop = @farm.crops.new(crop_params)

    respond_to do |format|
      if @crop.save
        format.html { redirect_to [@farm, @crop], notice: 'Crop was successfully created.' }
        format.json { render action: 'show', status: :created, location: @crop }
      else
        format.html { render action: 'new' }
        format.json { render json: @crop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crops/1
  # PATCH/PUT /crops/1.json
  def update
    respond_to do |format|
      if @crop.update(crop_params)
        format.html { redirect_to [@farm, @crop], notice: 'Crop was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @crop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crops/1
  # DELETE /crops/1.json
  def destroy
    @crop.destroy
    respond_to do |format|
      format.html { redirect_to farm_crops_url(@farm) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farm
      @farm = Farm.find(params[:farm_id])
    end

    def set_crop
      @crop = Crop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crop_params
      params.require(:crop).permit(:name, :description, :farm_id)
    end
end
