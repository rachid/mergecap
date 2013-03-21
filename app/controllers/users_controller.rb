class UsersController < ApplicationController
  respond_to :json

  def index
    respond_with [current_user]
  end

  def show
  end
end
