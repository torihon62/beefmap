class PlaceToEatsController < ApplicationController
  before_action :set_place_to_eat, only: [:show, :edit, :update, :destroy]

  # GET /place_to_eats
  # GET /place_to_eats.json
  def index
    @place_to_eats = PlaceToEat.all
  end

  # GET /place_to_eats/1
  # GET /place_to_eats/1.json
  def show
  end

  # GET /place_to_eats/new
  def new
    @place_to_eat = PlaceToEat.new
  end

  # GET /place_to_eats/1/edit
  def edit
  end

  # POST /place_to_eats
  # POST /place_to_eats.json
  def create
    @place_to_eat = PlaceToEat.new(place_to_eat_params)

    respond_to do |format|
      if @place_to_eat.save
        format.html { redirect_to @place_to_eat, notice: 'Place to eat was successfully created.' }
        format.json { render :show, status: :created, location: @place_to_eat }
      else
        format.html { render :new }
        format.json { render json: @place_to_eat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_to_eats/1
  # PATCH/PUT /place_to_eats/1.json
  def update
    respond_to do |format|
      if @place_to_eat.update(place_to_eat_params)
        format.html { redirect_to @place_to_eat, notice: 'Place to eat was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_to_eat }
      else
        format.html { render :edit }
        format.json { render json: @place_to_eat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_to_eats/1
  # DELETE /place_to_eats/1.json
  def destroy
    @place_to_eat.destroy
    respond_to do |format|
      format.html { redirect_to place_to_eats_url, notice: 'Place to eat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_to_eat
      @place_to_eat = PlaceToEat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_to_eat_params
      params.require(:place_to_eat).permit(:name, :address, :latitude, :longitude, :tel, :url)
    end
end
