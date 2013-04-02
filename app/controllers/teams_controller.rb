class TeamsController < ApplicationController
  respond_to :json

  def index
    respond_with current_user.teams
  end

  def show
    respond_with Team.find(params[:id])
  end

  def create
    respond_with current_user.teams.create(params[:team])
  end

  def update
    respond_with current_user.teams.update(params[:id], params[:member])
  end

  def destroy
    respond_with current_user.teams.destroy(params[:id])
  end

  def dashboard
  end
end
