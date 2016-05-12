class WeatherboxesController < ApplicationController
  before_action :set_weatherbox, only: [:show, :edit, :update, :destroy]

  # GET /weatherboxes
  # GET /weatherboxes.json
  def index
    @weatherboxes = Weatherbox.all
  end

  # GET /weatherboxes/1
  # GET /weatherboxes/1.json
  def show
  end

  # GET /weatherboxes/new
  def new
    @weatherbox = Weatherbox.new
  end

  # GET /weatherboxes/1/edit
  def edit
  end

  # POST /weatherboxes
  # POST /weatherboxes.json
  def create
    @weatherbox = Weatherbox.new(weatherbox_params)

    respond_to do |format|
      if @weatherbox.save
        format.html { redirect_to @weatherbox, notice: 'Weatherbox was successfully created.' }
        format.json { render :show, status: :created, location: @weatherbox }
      else
        format.html { render :new }
        format.json { render json: @weatherbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weatherboxes/1
  # PATCH/PUT /weatherboxes/1.json
  def update
    respond_to do |format|
      if @weatherbox.update(weatherbox_params)
        format.html { redirect_to @weatherbox, notice: 'Weatherbox was successfully updated.' }
        format.json { render :show, status: :ok, location: @weatherbox }
      else
        format.html { render :edit }
        format.json { render json: @weatherbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weatherboxes/1
  # DELETE /weatherboxes/1.json
  def destroy
    @weatherbox.destroy
    respond_to do |format|
      format.html { redirect_to weatherboxes_url, notice: 'Weatherbox was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weatherbox
      @weatherbox = Weatherbox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weatherbox_params
      params.require(:weatherbox).permit(:box_id, :hardware_id, :software_id, :network_id, :xbee_address, :node_type, :location_id)
    end
end
