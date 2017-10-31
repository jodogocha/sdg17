class ResolutionsTypesController < ApplicationController
  before_action :set_resolutions_type, only: [:show, :edit, :update, :destroy]

  # GET /resolutions_types
  # GET /resolutions_types.json
  def index
    @resolutions_types = ResolutionsType.all
  end

  # GET /resolutions_types/1
  # GET /resolutions_types/1.json
  def show
  end

  # GET /resolutions_types/new
  def new
    @resolutions_type = ResolutionsType.new
  end

  # GET /resolutions_types/1/edit
  def edit
  end

  # POST /resolutions_types
  # POST /resolutions_types.json
  def create
    @resolutions_type = ResolutionsType.new(resolutions_type_params)

    respond_to do |format|
      if @resolutions_type.save
        format.html { redirect_to @resolutions_type, notice: 'Tipo de resolucion creado con exito.' }
        format.json { render :show, status: :created, location: @resolutions_type }
      else
        format.html { render :new }
        format.json { render json: @resolutions_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resolutions_types/1
  # PATCH/PUT /resolutions_types/1.json
  def update
    respond_to do |format|
      if @resolutions_type.update(resolutions_type_params)
        format.html { redirect_to @resolutions_type, notice: 'Datos actualizados con exito.' }
        format.json { render :show, status: :ok, location: @resolutions_type }
      else
        format.html { render :edit }
        format.json { render json: @resolutions_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resolutions_types/1
  # DELETE /resolutions_types/1.json
  def destroy
    @resolutions_type.destroy
    respond_to do |format|
      format.html { redirect_to resolutions_types_url, notice: 'Se ha eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resolutions_type
      @resolutions_type = ResolutionsType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resolutions_type_params
      params.require(:resolutions_type).permit(:nombre, :visto, :considerando, :resuelve)
    end
end
