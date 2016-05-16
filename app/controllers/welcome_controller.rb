class WelcomeController < ApplicationController
  
  before_action :set_hito, only: [:show, :edit, :update, :destroy]

  def hitos
   @deeds = Deed.all
  end
  
  def noticias
  end
  
  def index
  end
  
  def show
  end
  
  
end
