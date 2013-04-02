class MembersController < ApplicationController
  respond_to :json

  def index
    if params[:name] && params[:team_id]
      respond_with Member.where(name: params[:name], team_id: params[:team_id])
    else
      respond_with Member.all
    end
  end

  def show
    respond_with Member.find(params[:id])
  end

  def create
    respond_with Member.create(params[:member])
    Member.push_me
  end

  def update
    respond_with Member.update(params[:id], params[:member])
    Member.push_me
  end

  def destroy
    respond_with Member.destroy(params[:id])
    Member.push_me
  end
end
