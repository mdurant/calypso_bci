class DeedsController < ApplicationController
  before_action :set_deed, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  

  # GET /deeds
  # GET /deeds.json
  def index
    @deeds = Deed.all
    @deeds = Deed.find(:all, :conditions => ["date_deed between ? and ? ", :date_deed_one, :date_deed_two])
    
  end
  

  private
 # @articles = Article.find(:all,
#:conditions => [ " created_at between ? and ? ",
#:date_start, :date_end])
#otra opcion
#: where('created_at >= ? AND created_at <=?', :start, :end)
  
  
  # GET /deeds/1
  # GET /deeds/1.json
  def show
     @deeds = Deed.all
  end

  # GET /deeds/new
  def new
    @deed = Deed.new
  end

  # GET /deeds/1/edit
  def edit
  end

  # POST /deeds
  # POST /deeds.json
  def create
    @deed = Deed.new(deed_params)
    @deed.id_user = current_user.id
    

    respond_to do |format|
      if @deed.save
        format.html { redirect_to @deed, notice: 'Hito ha sido creado.' }
        format.json { render :show, status: :created, location: @deed }
      else
        format.html { render :new }
        format.json { render json: @deed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deeds/1
  # PATCH/PUT /deeds/1.json
  def update
    respond_to do |format|
      if @deed.update(deed_params)
        format.html { redirect_to @deed, notice: 'Hito ha sido actualizado.' }
        format.json { render :show, status: :ok, location: @deed }
      else
        format.html { render :edit }
        format.json { render json: @deed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deeds/1
  # DELETE /deeds/1.json
  def destroy
    @deed.destroy
    respond_to do |format|
      format.html { redirect_to deeds_url, notice: 'Hito ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deed
      @deed = Deed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deed_params
      params.require(:deed).permit(:title, :benefit, :id_user, :date_deed, :area_id, :title_evento, :description_evento)
    end
end
