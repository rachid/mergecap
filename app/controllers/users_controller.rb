class UsersController < ApplicationController
  respond_to :json

  def index
    respond_with [current_user].to_json
  end

  def show
    respond_with current_user
  end
end
