class RolesController < ApplicationController
	before_action :set_role, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource :only => [:show, :new, :edit, :destroy]

  # GET /Roles
  # GET /Roles.json
  def index
    @roles = Role.all
  end

  # GET /Roles/1
  # GET /Roles/1.json
  def show
  end

  # GET /Roles/new
  def new
    @actions = Action.all
    @role = Role.new
  end

  # GET /Roles/1/edit
  def edit
  end

  # POST /Roles
  # POST /Roles.json
  def create
    @role = Role.new(role_params)
    respond_to do |format|
      if @role.save
        format.html { redirect_to @role, notice: 'Rol creado exitosamente.' }
        format.json { render :index, status: :created, location: @role }
      else
        format.html { render :index }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Roles/1
  # PATCH/PUT /Roles/1.json
  def update
    respond_to do |format|
      if @role.update(role_params)
        format.html { redirect_to @role, notice: 'Rol actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @role }
      else
        format.html { render :edit }
        format.json { render json: @role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Roles/1
  # DELETE /Roles/1.json
  def destroy
    @role.destroy
    respond_to do |format|
      format.html { redirect_to roles_url, notice: 'Rol eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_role
      @role = Role.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def role_params
      params.require(:role).permit(:name, {action_ids: []})
    end

end