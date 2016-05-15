class WelcomeController < ApplicationController
  
  before_action :set_hito, only: [:show]

  
  
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
  
  
  #def search
  #  index
  #  render :search
  #end
  def set_search
    @q=Hito.search(params[:q])
  end
  
  def show
  end
  
  def set_hito
  end
  
  
  
end
