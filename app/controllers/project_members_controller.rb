class ProjectMembersController < ApplicationController
  respond_to :json

  def index
    respond_with ProjectMember.where(member_id: params[:ids])
  end

  def create
    respond_with ProjectMember.create(params[:project_member])
    Member.push_me
  end

  def destroy
    respond_with ProjectMember.destroy(params[:id])
    Member.push_me
  end
end
