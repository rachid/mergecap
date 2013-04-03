class ProjectsController < ApplicationController
  respond_to :json

  def index
    respond_with current_user.related_projects
  end

  def create
    mergecap = params[:project].delete(:mergecap)
    respond_with current_user.projects.create(params[:project])
  end

  def show
    respond_with current_user.projects.find(params[:id])
  end

  def update
    project = current_user.related_projects.find(params[:id])

    mergecap = params[:project].delete(:mergecap)
    project.update_attributes(params[:project])
    project.mergecap = mergecap
    project.save

    Project.push_me(project.team_id)

    respond_with project
  end

  def destroy
    respond_with current_user.projects.destroy(params[:id])
  end
end
