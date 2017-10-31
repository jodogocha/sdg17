class EsummariesController < ApplicationController
  before_action :set_esummary, only: [:show, :edit, :update, :destroy]

  # GET /esummaries
  # GET /esummaries.json
  def index
    @esummaries = Esummary.all
  end

  # GET /esummaries/1
  # GET /esummaries/1.json
  def show
  end

  # GET /esummaries/new
  def new
    @esummary = Esummary.new
  end

  # GET /esummaries/1/edit
  def edit
  end

  # POST /esummaries
  # POST /esummaries.json
  def create
    @esummary = Esummary.new(esummary_params)

    respond_to do |format|
      if @esummary.save
        format.html { redirect_to @esummary, notice: 'Esummary was successfully created.' }
        format.json { render :show, status: :created, location: @esummary }
      else
        format.html { render :new }
        format.json { render json: @esummary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /esummaries/1
  # PATCH/PUT /esummaries/1.json
  def update
    respond_to do |format|
      if @esummary.update(esummary_params)
        format.html { redirect_to @esummary, notice: 'Esummary was successfully updated.' }
        format.json { render :show, status: :ok, location: @esummary }
      else
        format.html { render :edit }
        format.json { render json: @esummary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /esummaries/1
  # DELETE /esummaries/1.json
  def destroy
    @esummary.destroy
    respond_to do |format|
      format.html { redirect_to esummaries_url, notice: 'Esummary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_esummary
      @esummary = Esummary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def esummary_params
      params.require(:esumary).permit(:record_id)
    end
end
