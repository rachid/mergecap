class MembersController < ApplicationController
  respond_to :json

  def index
    respond_with Member.all
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
