class ResolutionsController < ApplicationController
  before_action :set_resolution, only: [:show, :edit, :update, :destroy]

  # GET /resolutions
  # GET /resolutions.json
  def index
    @resolutions = Resolution.paginate(:page => params[:page], :per_page => 10)
  end

  # GET /resolutions/1
  # GET /resolutions/1.json
  def show
  end

  # GET /resolutions/new
  def new
    @resolution = Resolution.new
  end

  # GET /resolutions/1/edit
  def edit
  end

  # POST /resolutions
  # POST /resolutions.json
  def create
    #@autoritie = Autoritie.find(params[:autoritie_id])
    @resolution = Resolution.new(resolution_params)

    respond_to do |format|
      if @resolution.save
        format.html { redirect_to action: :index, notice: 'Resolucion creada correctamente.' }
        format.json { render :show, status: :created, location: @resolution }
      else
        format.html { render :new }
        format.json { render json: @resolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resolutions/1
  # PATCH/PUT /resolutions/1.json
  def update
    respond_to do |format|
      if @resolution.update(resolution_params)
        format.html { redirect_to @resolution, notice: 'Datos actualizados con exito.' }
        format.json { render :show, status: :ok, location: @resolution }
      else
        format.html { render :edit }
        format.json { render json: @resolution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resolutions/1
  # DELETE /resolutions/1.json
  def destroy
    @resolution.destroy
    respond_to do |format|
      format.html { redirect_to resolutions_url, notice: 'Se ha eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resolution
      @resolution = Resolution.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resolution_params
      params.require(:resolution).permit(:fecha, :numero, :autoritie_id, :resolutions_type_id, :record_id, :visto, :considerando, :resuelve)
    end
end
