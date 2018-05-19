class InvitadosController < ApplicationController
  before_action :set_invitado, only: [:show, :edit, :update, :destroy]

  # GET /invitados
  # GET /invitados.json
  def index
    @invitados = Invitado.all
  end

  # GET /invitados/1
  # GET /invitados/1.json
  def show
  end

  # GET /invitados/new
  def new
    @invitado = Invitado.new
  end

  # GET /invitados/1/edit
  def edit
  end

  # POST /invitados
  # POST /invitados.json
  def create
    @invitado = Invitado.new(invitado_params)

    respond_to do |format|
      if @invitado.save
        format.html { redirect_to @invitado, notice: 'Invitado was successfully created.' }
        format.json { render :show, status: :created, location: @invitado }
      else
        format.html { render :new }
        format.json { render json: @invitado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invitados/1
  # PATCH/PUT /invitados/1.json
  def update
    respond_to do |format|
      if @invitado.update(invitado_params)
        format.html { redirect_to @invitado, notice: 'Invitado was successfully updated.' }
        format.json { render :show, status: :ok, location: @invitado }
      else
        format.html { render :edit }
        format.json { render json: @invitado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invitados/1
  # DELETE /invitados/1.json
  def destroy
    @invitado.destroy
    respond_to do |format|
      format.html { redirect_to invitados_url, notice: 'Invitado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invitado
      @invitado = Invitado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invitado_params
      params.require(:invitado).permit(:chef_id, :name, :class, :email)
    end
end
