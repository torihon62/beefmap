class BeefsController < ApplicationController
  before_action :set_beef, only: [:show, :edit, :update, :destroy]

  # GET /beefs
  # GET /beefs.json
  def index
    @beefs = Beef.all
  end

  # GET /beefs/1
  # GET /beefs/1.json
  def show
  end

  # GET /beefs/new
  def new
    @beef = Beef.new
  end

  # GET /beefs/1/edit
  def edit
  end

  # POST /beefs
  # POST /beefs.json
  def create
    @beef = Beef.new(beef_params)

    respond_to do |format|
      if @beef.save
        format.html { redirect_to @beef, notice: 'Beef was successfully created.' }
        format.json { render :show, status: :created, location: @beef }
      else
        format.html { render :new }
        format.json { render json: @beef.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beefs/1
  # PATCH/PUT /beefs/1.json
  def update
    respond_to do |format|
      if @beef.update(beef_params)
        format.html { redirect_to @beef, notice: 'Beef was successfully updated.' }
        format.json { render :show, status: :ok, location: @beef }
      else
        format.html { render :edit }
        format.json { render json: @beef.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beefs/1
  # DELETE /beefs/1.json
  def destroy
    @beef.destroy
    respond_to do |format|
      format.html { redirect_to beefs_url, notice: 'Beef was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beef
      @beef = Beef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beef_params
      params.require(:beef).permit(:name)
    end
end
