class HardwarePartsController < ApplicationController
  before_action :set_hardware_part, only: [:show, :edit, :update, :destroy]

  # GET /hardware_parts
  # GET /hardware_parts.json
  def index
    @hardware_parts = HardwarePart.all
  end

  # GET /hardware_parts/1
  # GET /hardware_parts/1.json
  def show
  end

  # GET /hardware_parts/new
  def new
    @hardware_part = HardwarePart.new
  end

  # GET /hardware_parts/1/edit
  def edit
  end

  # POST /hardware_parts
  # POST /hardware_parts.json
  def create
    @hardware_part = HardwarePart.new(hardware_part_params)

    respond_to do |format|
      if @hardware_part.save
        format.html { redirect_to @hardware_part, notice: 'Hardware part was successfully created.' }
        format.json { render :show, status: :created, location: @hardware_part }
      else
        format.html { render :new }
        format.json { render json: @hardware_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hardware_parts/1
  # PATCH/PUT /hardware_parts/1.json
  def update
    respond_to do |format|
      if @hardware_part.update(hardware_part_params)
        format.html { redirect_to @hardware_part, notice: 'Hardware part was successfully updated.' }
        format.json { render :show, status: :ok, location: @hardware_part }
      else
        format.html { render :edit }
        format.json { render json: @hardware_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hardware_parts/1
  # DELETE /hardware_parts/1.json
  def destroy
    @hardware_part.destroy
    respond_to do |format|
      format.html { redirect_to hardware_parts_url, notice: 'Hardware part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hardware_part
      @hardware_part = HardwarePart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hardware_part_params
      params.require(:hardware_part).permit(:hardware_id, :part_id)
    end
end
