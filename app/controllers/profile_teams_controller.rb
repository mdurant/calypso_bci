class ProfileTeamsController < ApplicationController
  before_action :set_profile_team, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /profile_teams
  # GET /profile_teams.json
  def index
    @profile_teams = ProfileTeam.all
  end

  # GET /profile_teams/1
  # GET /profile_teams/1.json
  def show
  end

  # GET /profile_teams/new
  def new
    @profile_team = ProfileTeam.new
  end

  # GET /profile_teams/1/edit
  def edit
  end

  # POST /profile_teams
  # POST /profile_teams.json
  def create
    @profile_team = ProfileTeam.new(profile_team_params)

    respond_to do |format|
      if @profile_team.save
        format.html { redirect_to @profile_team, notice: 'Profile team was successfully created.' }
        format.json { render :show, status: :created, location: @profile_team }
      else
        format.html { render :new }
        format.json { render json: @profile_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profile_teams/1
  # PATCH/PUT /profile_teams/1.json
  def update
    respond_to do |format|
      if @profile_team.update(profile_team_params)
        format.html { redirect_to @profile_team, notice: 'Profile team was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile_team }
      else
        format.html { render :edit }
        format.json { render json: @profile_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_teams/1
  # DELETE /profile_teams/1.json
  def destroy
    @profile_team.destroy
    respond_to do |format|
      format.html { redirect_to profile_teams_url, notice: 'Profile team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_team
      @profile_team = ProfileTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_team_params
      params.require(:profile_team).permit(:name, :email, :phone, :celular, :anexo, :address_work, :image)
    end
end
