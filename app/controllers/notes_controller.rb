class NotesController < ApplicationController
  before_action :set_notes, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  def index
    @notes = Note.all
  end
  
  
  def show
    @notes = Note.find(params[:id])
      if @note.nil?
      @notes = Note.all
      flash.now[:alert] = "Your Note was not found"
      render "index"
      end
  end
  
  def new
    @notes = Note.new
  end
  
  def edit
    
  end
  
  
  def create
    @notes = Note.new(note_params)
    @notes.user_id = current_user.id
    
      respond_to do |format|
        if @notes.save
          format.html { redirect_to @notes, notice: 'Note ha sido creado.' }
          format.json { render :show, status: :created, location: @notes }
        else
          format.html { render :new }
          format.json { render json: @notes.errors, status: :unprocessable_entity }
        end
    end
  end
  
  
  def update
    respond_to do |format|
      if @notes.update(note_params)
        format.html { redirect_to @notes, notice: 'Note ha sido actualizado.' }
        format.json { render :show, status: :ok, location: @notes }
      else
        format.html { render :edit }
        format.json { render json: @notes.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @notes.destroy
    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'Nota ha sido eliminado.' }
      format.json { head :no_content }
    end
  end
  
  

  private
  
    def set_notes
      @notes = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:title, :content, :category_id, :user_id)
    end
end

