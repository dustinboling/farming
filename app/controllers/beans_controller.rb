class BeansController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_farm, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :set_crop, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  before_action :set_bean, only: [:show, :edit, :update, :destroy]

  # GET /beans
  # GET /beans.json
  def index
    @beans = @crop.beans.all
  end

  # GET /beans/1
  # GET /beans/1.json
  def show
  end

  # GET /beans/new
  def new
    @bean = @crop.beans.new
  end

  # GET /beans/1/edit
  def edit
  end

  # POST /beans
  # POST /beans.json
  def create
    @bean = @crop.beans.new(bean_params)

    respond_to do |format|
      if @bean.save
        format.html { redirect_to [@farm, @crop], notice: 'Bean was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bean }
      else
        format.html { render action: 'new' }
        format.json { render json: @bean.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beans/1
  # PATCH/PUT /beans/1.json
  def update
    respond_to do |format|
      if @bean.update(bean_params)
        format.html { redirect_to [@farm, @crop], notice: 'Bean was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bean.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beans/1
  # DELETE /beans/1.json
  def destroy
    @bean.destroy
    respond_to do |format|
      format.html { redirect_to farm_beans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farm
      @farm = Farm.find(params[:farm_id])
    end

    def set_crop
      @crop = @farm.crops.find(params[:crop_id])
    end

    def set_bean
      @bean = @farm.beans.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bean_params
      params.require(:bean).permit(:first_name, :last_name, :spouse_name, :street_address, :city, :state, :zip, :farm_id)
    end
end
