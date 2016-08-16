class WelcomeController < ApplicationController
  
  before_action :set_hito, only: [:show, :edit, :update, :destroy]
  

  def hitos
    @deeds = Deed.all()
    @deed_months = @deeds.group_by { |t| t.date_deed.beginning_of_month }
    @deeds = Deed.paginate(:page => params[:page], :per_page => 10)

    #@deeds = Deed.find(:all, :conditions => ["date_deed between ? and ? ", :date_deed_one, :date_deed_two])
  
  end
  
  def paginar
    @deeds = Deed.paginate(:page => params[:page], :per_page => 10)
  end
  
  

  def blogs
    @blogs = Blog.all()
   @blogs = Blog.paginate(:page => params[:page], :per_page => 2)
  end
  
  def noticias
   @blogs = Blog.all()
   @blogs = Blog.paginate(:page => params[:page], :per_page => 2)
  end
  
  def index
  end
  
  def new
  end

  
  def show
    @deeds = Deed.all
  end
  
  def search
  end

  
  
  
end
