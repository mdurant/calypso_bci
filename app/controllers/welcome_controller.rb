class WelcomeController < ApplicationController
  
  before_action :set_hito, only: [:show, :edit, :update, :destroy]
  before_filter :set_search
  
  
  def noticias
  end
  
   def hitos
    @search = Hito.search(params[:q])
    @hitos = @search.result
  end

  def search
    index
    render :index
  end
  
  
  def set_search
    @search=Hito.search(params[:q])
  end
  
  def show
  end
  
  
end
