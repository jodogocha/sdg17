class AutoritiesController < ApplicationController
  before_action :set_autority, only: [:show, :edit, :update, :destroy]

  # GET /autorities
  # GET /autorities.json
  def index
    @autorities = Autoritie.all
  end

  # GET /autorities/1
  # GET /autorities/1.json
  def show
  end

  # GET /autorities/new
  def new
    @autority = Autoritie.new
  end

  # GET /autorities/1/edit
  def edit
  end

  # POST /autorities
  # POST /autorities.json
  def create
    @autority = Autoritie.new(autority_params)

    respond_to do |format|
      if @autority.save
        format.html { redirect_to @autority, notice: 'Autoridad creada con exito.' }
        format.json { render :show, status: :created, location: @autority }
      else
        format.html { render :new }
        format.json { render json: @autority.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autorities/1
  # PATCH/PUT /autorities/1.json
  def update
    respond_to do |format|
      if @autority.update(autority_params)
        format.html { redirect_to @autority, notice: 'Datos actualizados con exito.' }
        format.json { render :show, status: :ok, location: @autority }
      else
        format.html { render :edit }
        format.json { render json: @autority.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autorities/1
  # DELETE /autorities/1.json
  def destroy
    @autority.destroy
    respond_to do |format|
      format.html { redirect_to autorities_url, notice: 'Se ha eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autority
      @autority = Autoritie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autority_params
      params.require(:autority).permit(:nombre)
    end
end
