class ProjectsController < ApplicationController
  respond_to :json

  def index
    respond_with current_user.projects
  end

  def create
    respond_with current_user.projects.create(params[:project])
  end

  def show
    respond_with current_user.projects.find(params[:id])
  end

  def update
    respond_with current_user.projects.update(params[:id], params[:project])
  end

  def destroy
    respond_with current_user.projects.destroy(params[:id])
  end
end
