class HitosController < ApplicationController
  before_action :set_hito, only: [:show, :edit, :update, :destroy]
#  before_filter :set_search

  # GET /hitos
  # GET /hitos.json
  def index
    @search = Hito.search(params[:q])
    @Hitos = @search.result
  end

  def search
    index
    render :index
  end
  
  
  #def set_search
  #  @q=Hito.search(params[:q])
  #end
  

  # GET /hitos/1
  # GET /hitos/1.json
  def show
    @hitos = Hito.find(params[:id])
  end

  # GET /hitos/new
  def new
    @hito = Hito.new
  end

  # GET /hitos/1/edit
  def edit
  end

  # POST /hitos
  # POST /hitos.json
  def create
    @hito = Hito.new(hito_params)
    # Asigno el ID del usuario logueado para guardar!
    @hito.id_user = current_user.id

    respond_to do |format|
      if @hito.save
        format.html { redirect_to @hito, notice: 'Hito ha sido creado!.' }
        format.json { render :show, status: :created, location: @hito }
      else
        format.html { render :new }
        format.json { render json: @hito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hitos/1
  # PATCH/PUT /hitos/1.json
  def update
    respond_to do |format|
      if @hito.update(hito_params)
        format.html { redirect_to @hito, notice: 'Hito ha sido modificado!.' }
        format.json { render :show, status: :ok, location: @hito }
      else
        format.html { render :edit }
        format.json { render json: @hito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hitos/1
  # DELETE /hitos/1.json
  def destroy
    @hito.destroy
    respond_to do |format|
      format.html { redirect_to hitos_url, notice: 'Hito ha sido eliminado!.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hito
      @hito = Hito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hito_params
      params.require(:hito).permit(:title, :area_id, :date_from, :date_end, :benefit, :id_user, :title_evento, :description_evento)
    end
end
