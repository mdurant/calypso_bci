class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    
def show
@user = User.find(params[:id])
end

def index 
#@users = User.all 
@users = User.paginate(:page => params[:page], :per_page => 10)

end


end
